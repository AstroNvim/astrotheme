local util = require "astrotheme.extras"

local M = {}

local base_component = [[
	<dict>
		<key>Alpha Component</key>
		<real>%s</real>
		<key>Red Component</key>
		<real>%s</real>
		<key>Green Component</key>
		<real>%s</real>
		<key>Blue Component</key>
		<real>%s</real>
		<key>Color Space</key>
		<string>sRGB</string>
	</dict>]]

--- @param colors AstroThemePalette
function M.generate(colors)
  local function calculate_component(hex, alpha)
    hex, alpha = hex:gsub("^#", ""), alpha or 1
    local r = string.format("%.16f", tonumber("0x" .. hex:sub(1, 2)) / 255)
    local g = string.format("%.16f", tonumber("0x" .. hex:sub(3, 4)) / 255)
    local b = string.format("%.16f", tonumber("0x" .. hex:sub(5, 6)) / 255)
    return base_component:format(tostring(alpha), r, g, b)
  end
  local function normalize_colors(_colors)
    local new_colors = {}
    for k, v in pairs(_colors) do
      if type(v) == "table" then
        new_colors[k] = normalize_colors(v)
      elseif v:match "^#" then
        new_colors[k] = calculate_component(v)
      else
        new_colors[k] = v
      end
    end
    return new_colors
  end
  local iterm_colors = normalize_colors(colors)
  iterm_colors.cursor_guide = calculate_component(colors.syntax.text, 0.25)
  iterm_colors.badge = calculate_component(colors.ui.red, 0.5)
  return util.template(
    [[
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>Ansi 0 Color</key>
${term.black}
	<key>Ansi 1 Color</key>
${term.red}
	<key>Ansi 2 Color</key>
	${term.green}
	<key>Ansi 3 Color</key>
${term.yellow}
	<key>Ansi 4 Color</key>
${term.blue}
	<key>Ansi 5 Color</key>
${term.purple}
	<key>Ansi 6 Color</key>
${term.cyan}
	<key>Ansi 7 Color</key>
${term.white}
	<key>Ansi 8 Color</key>
${term.bright_black}
	<key>Ansi 9 Color</key>
${term.bright_red}
	<key>Ansi 10 Color</key>
${term.bright_green}
	<key>Ansi 11 Color</key>
${term.bright_yellow}
	<key>Ansi 12 Color</key>
${term.bright_blue}
	<key>Ansi 13 Color</key>
${term.bright_purple}
	<key>Ansi 14 Color</key>
${term.bright_cyan}
	<key>Ansi 15 Color</key>
${term.bright_white}
	<key>Background Color</key>
${ui.base}
	<key>Badge Color</key>
${ui.badge}
	<key>Bold Color</key>
${ui.accent}
	<key>Cursor Color</key>
${syntax.text}
	<key>Cursor Guide Color</key>
${cursor_guide}
	<key>Cursor Text Color</key>
${ui.base}
	<key>Foreground Color</key>
${syntax.text}
	<key>Link Color</key>
${syntax.blue}
	<key>Selected Text Color</key>
${syntax.text}
	<key>Selection Color</key>
${ui.selection}
</dict>
</plist>]],
    iterm_colors
  )
end

return M
