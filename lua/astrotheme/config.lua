local M = {}

M.options = {}

M.default = {
  theme = "astro-night",
  termguicolors = true,
  background = "dark",

  palette = {},
  highlights = {},

  plugins = {
    ["aerial.nvim"] = true,
    ["beacon.nvim"] = true,
    ["bufferline.nvim"] = true,
    ["nvim-cmp"] = true,
    ["nvim-dap-ui"] = true,
    ["dashboard.nvim"] = true,
    ["gitsigns.nvim"] = true,
    ["hop.nvim"] = true,
    ["indent-blankline.nvim"] = true,
    ["lightspeed.nvim"] = true,
    ["neo-tree.nvim"] = true,
    ["nvim-notify"] = true,
    ["nvim-tree"] = true,
    ["nvim-web-devicons"] = true,
    rainbow = true,
    ["symbols-outline.nvim"] = true,
    ["telescope.nvim"] = true,
    ["nvim-treesitter"] = true,
    vimwiki = true,
    ["which-key.nvim"] = true,
  }
}
return M
