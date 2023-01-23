local M = {}

M.options = {}

M.default = {
  theme = "astro-night",
  termguicolors = true,
  background = "dark",

  palette = {},
  highlights = {},

  plugins = {
    aerial = true,
    beacon = true,
    bufferline = true,
    cmp = true,
    dapui = true,
    dashboard = true,
    gitsigns = true,
    highlighturl = true,
    hop = true,
    indent_blankline = true,
    lightspeed = true,
    ["neo-tree"] = true,
    notify = true,
    ["nvim-tree"] = true,
    ["nvim-web-devicons"] = true,
    rainbow = true,
    symbols_outline = true,
    telescope = true,
    treesitter = true,
    vimwiki = true,
    ["which-key"] = true,
  }
}
return M
