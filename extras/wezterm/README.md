# Wezterm
1. Copy either `wezterm_astrodark.toml` or `wezterm_astrodark.lua` to `~/.config/wezterm/colors` 
2. Add either options to your Wezterm config.

## If you want to use astrodark.toml
```lua
return {
  color_scheme = "Astrodark",
}
```

## If you want to use astrodark.lua
```lua
local astrodark = require("colors/astrodark")
return {
  colors = astrodark.colors(),
  window_frame = astrodark.window_frame(),
}
```
