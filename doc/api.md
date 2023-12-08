# Lua API

astrotheme API documentation

## astrotheme

AstroTheme

 The default colorscheme used by AstroNvim an aesthetic and feature-rich
 neovim config that is extensible and easy to use with a great set of
 plugins

This module can be loaded with `local astrotheme = require "astrotheme"`

copyright 2023 license GNU General Public License v3.0 @class astrocore

### config


```lua
AstroThemeOpts
```

### load


```lua
function astrotheme.load(theme?: string)
```

 Load a specific theme given a palette name

### setup


```lua
function astrotheme.setup(opts: AstroThemeOpts)
```

 Set up AstroTheme with provided user configured options


## astrotheme.lib.config

AstroTheme Configuration

Default configuration of AstroTheme

This module can be loaded with `local astrotheme_config = require "astrotheme.lib.config"`

copyright 2023 license GNU General Public License v3.0 @class astrocore

### default


```lua
AstroThemeOpts
```

### user_config


```lua
function M.user_config(opts: AstroThemeOpts)
  -> AstroThemeOpts
```


## astrotheme.lib.util

AstroTheme Utilities

Various utilities for use within AstroTheme

This module can be loaded with `local astrotheme_utils = require "astrotheme.lib.util"`

copyright 2023 license GNU General Public License v3.0 @class astrocore

### get_hl_modules


```lua
function astrotheme.lib.util.get_hl_modules(highlights: table<string, vim.api.keyset.highlight>, path: string, modules: string[], opts: AstroThemeOpts)
  -> table<string, vim.api.keyset.highlight>
```

 Compile all highlights from a list of modules

### get_plugin_list


```lua
function astrotheme.lib.util.get_plugin_list(opts: AstroThemeOpts)
  -> string[]
```

 Retrieve a list of all plugins to enable

### live_reloading


```lua
function astrotheme.lib.util.live_reloading(opts: AstroThemeOpts)
```

 Enable live reloading of AstroTheme for development

### reload


```lua
function astrotheme.lib.util.reload(opts: AstroThemeOpts, theme: string)
```

 Reload a given theme

### reload_module


```lua
function astrotheme.lib.util.reload_module(module: string, bool: boolean)
  -> any
```

 Reload a module

### set_highlights


```lua
function astrotheme.lib.util.set_highlights(opts: AstroThemeOpts, highlights: table<string, vim.api.keyset.highlight>, theme: string)
```

 Set highlights in Neovim

### set_palettes


```lua
function astrotheme.lib.util.set_palettes(opts: AstroThemeOpts)
  -> AstroThemePalette
```

 Set a palette given a AstroTheme options

### set_terminal_colors


```lua
function astrotheme.lib.util.set_terminal_colors()
```

 Set terminal colors based on the currently loaded colors


