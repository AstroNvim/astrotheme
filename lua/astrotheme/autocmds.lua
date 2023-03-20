local util = require "astrotheme.lib.util"
local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

local lsp_token_group = augroup("lsp_token", { clear = true })

-- In some cases, LSP tokens apply prioritized highlight groups
-- that override better-suited groups from Treesitter.
--
-- E.g.: With the following lua code: `self.bufnr`
-- ^ Treesitter applies highlight group `@variable.builtin` to `self`.
-- ^ lua-language-server applies `@lsp.type.variable` to `self`, which links to `Identifier` by default.
-- `@lsp.type.variable` is prioritized, so `self` is rendered incorrectly as a variable rather than a builtin.
--
-- The only known way (advice welcome) to resolve this is to apply a higher priority highlight group
-- to the token (`self`). In order to do this, we need to identify these cases by looking at both
-- the Treesitter groups and the LSP groups that are applied for any token that has an LSP group.
-- (If they don't have any LSP groups, there's nothing to do, no priority clashing will occur.)
--
-- Fortunately, via the `LspTokenUpdate` event, `vim.inspect_pos()` and
-- `vim.lsp.semantic_tokens.highlight_token()`, we have this ability.
--
-- Note: Other than `vim.lsp.semantic_tokens.highlight_token()`, there is only 1 other
-- known way to set priorities of highlight groups: `nvim_buf_set_extmark()`.
-- Treesitter uses this method. It doesn't seem to fit as nice with our solution.
--
-- Ref: :help LspTokenUpdate
autocmd("LspTokenUpdate", {
  group = lsp_token_group,
  callback = function(args)
    local token = args.data.token
    -- Looks to fix tokens with `variable` type and `definition` modifier
    if token.type == "variable" and token.modifiers.definition then
      -- Ref: :help vim.inspect_pos()
      local hl_groups = vim.inspect_pos(args.buf, token.line, token.start_col, {
        syntax = false,
        treesitter = true,
        extmarks = false,
        semantic_tokens = false,
      })
      if hl_groups.treesitter then
        local captures = {}
        for _, value in pairs(hl_groups.treesitter) do
          captures[value.capture] = true
        end
        if util.set_contains(captures, "variable.builtin") then
          -- Fixes builtin keywords (such as `self`)
          -- Ref: :help vim.lsp.semantic_tokens.highlight_token()
          vim.lsp.semantic_tokens.highlight_token(token, args.buf, args.data.client_id, "@variable.builtin", {
            priority = 128,
          })
        elseif util.set_contains(captures, "punctuation.delimiter") then
          -- Fixes puncuation marks (such as the colons in `state.tree:get_node():get_id()`)
          vim.lsp.semantic_tokens.highlight_token(token, args.buf, args.data.client_id, "@punctuation.delimiter", {
            priority = 128,
          })
        end
      end
    end
  end,
})
