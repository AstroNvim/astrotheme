<p align="center">
<img src="https://camo.githubusercontent.com/92892e2441ba11c6584a145459c4fd61d26dc9080e802105c65819b7db05e22c/68747470733a2f2f617374726f6e76696d2e6769746875622e696f2f696d672f6c6f676f2f617374726f6e76696d2e737667" width=100/>
</p>

<h1 align="center"> AstroTheme </h1>

<p align="center">The default colorscheme used by <a href="https://github.com/AstroNvim/AstroNvim">AstroNvim</a> an aesthetic and feature-rich neovim config that is extensible and easy to use with a great set of plugins  </p>

## ✨ Features
* Override or modify ___EVERYTHING.___
* Global & Theme specific overrides
* Load only the plugin highlights you need.
* Vim terminal colors.
* Heirline & Lualine highlights

## 🎨 Palettes

### AstroDark
<p align="center">
<img src="https://github.com/AstroNvim/astronvim.github.io/raw/main/static/img/overview.png"/>
</p>

```vim
colorscheme astrodark
```



## 🛠 Options
```lua
require("astrotheme").setup({
  terminal_color = true    -- Bool value, toggles if termguicolors are set by AstroTheme.
  
  plugin_default = "auto", -- Sets how all plugins will be loaded
                           -- "auto": Uses lazy / packer enabled plugins to load highlights.
                           -- true: Enables all plugins highlights.
                           -- false: Disables all plugins.
  
  plugins = {              -- Allows for individual plugin overides using plugin name and value from above.
    bufferline = false,
  
  }
  
  palettes = {
    global = {             -- Globaly accessible palettes, theme palettes take priority.
      my_grey = "#ebebeb"
      my_color = "#ffffff"
    },
    astrodark = {          -- Extend or modify astrodarks palette colors
      red = "#800010"      -- Overrides astrodarks red color
      my_color = "#000000" -- Overrides global.my_color
    },
  },
  
  highlights = {
    global = {             -- Add or modify hl groups globaly, theme set hl groups take priority.
      PluginColor4 = {fg = C.my_grey, bg = C.none }
    },
    astrodark = {
      modify_hl_groups = function(hl) -- modify_hl_groups function allows you to modify hl groups, works with global.
        hl.Comment.fg = C.my_color
        hl.Comment.italic = true
      end,
      ["@String"] = {fg = "#ff00ff bg = "NONE"}
    }
  }
})
```

## 🔌 Supported Plugins
* [aerial](https://github.com/stevearc/aerial.nvim)
* [beacon](https://github.com/DanilaMihailov/beacon.nvim)
* [bufferline](https://github.com/akinsho/bufferline.nvim)
* [dashboard-nvim](https://github.com/glepnir/dashboard-nvim)
* [gitsigns](https://github.com/lewis6991/gitsigns.nvim)
* [hop](https://github.com/phaazon/hop.nvim/)
* [indent_blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
* [lightspeed](https://github.com/ggandor/lightspeed.nvim)
* [lualine](https://github.com/nvim-lualine/lualine.nvim)
* [neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim)
* [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
* [nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui)
* [nvim-notify](https://github.com/rcarriga/nvim-notify)
* [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua)
* [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
* [nvim-ts-rainbow](https://github.com/p00f/nvim-ts-rainbow)
* [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons)
* [telescope](https://github.com/nvim-telescope/telescope.nvim)
* [vimwiki](https://github.com/vimwiki/vimwiki)
* [which-key](https://github.com/folke/which-key.nvim)

## 📦 Installation
Lazy:
```lua
{ "AstroNvim/astrotheme" }
```
Packer:
```lua
 use "AstroNvim/astrotheme"
```

