#!/usr/bin/env -S nvim -l

if not vim.uv then
  -- TODO: Remove this fallback when the minimum Neovim version is 0.10.
  vim.uv = vim.loop
end

vim.env.LAZY_STDPATH = ".tests"
load(vim.fn.system "curl -s https://raw.githubusercontent.com/folke/lazy.nvim/main/bootstrap.lua")()

-- Setup lazy
require("lazy.minit").setup {
  spec = {
    {
      dir = vim.uv.cwd(),
      opts = {},
    },
  },
}
