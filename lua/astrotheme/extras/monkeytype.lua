local util = require "astrotheme.extras"

local M = {}

--- @param colors AstroThemePalette
function M.generate(colors)
  -- build the color palette
  local monkeytype_colors = {
    name = colors._style_name,
    bg = colors.ui.base,
    main = colors.ui.accent,
    caret = colors.ui.text,
    sub = colors.syntax.comment,
    sub_alt = colors.ui.inactive_base,
    text = colors.syntax.text,
    error = colors.syntax.red,
    error_extra = colors.ui.red,
    colorful_error = colors.syntax.red,
    colorful_error_extra = colors.ui.red,
  }
  -- encode the palette into a base64 string for URL
  monkeytype_colors.encoded = vim.base64.encode(vim.json.encode {
    c = {
      monkeytype_colors.bg,
      monkeytype_colors.main,
      monkeytype_colors.caret,
      monkeytype_colors.sub,
      monkeytype_colors.sub_alt,
      monkeytype_colors.text,
      monkeytype_colors.error,
      monkeytype_colors.error_extra,
      monkeytype_colors.colorful_error,
      monkeytype_colors.colorful_error_extra,
    },
  })
  return util.template(
    [=[
# ${name} MonkeyType Theme

[Click here to apply ${name} in MonkeyType](https://monkeytype.com?customTheme=${encoded})

Here is the CSS that gets applied when clicking the link above:

```css
:root {
    --bg-color: ${bg};
    --main-color: ${main};
    --caret-color: ${caret};
    --sub-color: ${sub};
    --sub-alt-color: ${sub_alt};
    --text-color: ${text};
    --error-color: ${error};
    --error-extra-color: ${error_extra};
    --colorful-error-color: ${colorful_error};
    --colorful-error-extra-color: ${colorful_error_extra};
   }
```
]=],
    monkeytype_colors
  )
end

return M
