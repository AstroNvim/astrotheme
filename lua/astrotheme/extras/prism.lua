local util = require "astrotheme.extras"

local M = {}

--- @param colors AstroThemePalette
function M.generate(colors)
  return util.template(
    [[
module.exports =  {
  plain: {
    color: "${syntax.text}",
    backgroundColor: "${ui.base}",
  },
  styles: [
    {
      types: ["prolog", "builtin"],
      style: {
        color: "${syntax.red}",
      },
    },
    {
      types: ["function", "symbol", "tag"],
      style: {
        color: "${syntax.blue}",
      },
    },
    {
      types: ["punctuation", "variable"],
      style: {
        color: "${syntax.text}",
      },
    },
    {
      types: ["string", "char", "selector"],
      style: {
        color: "${syntax.green}",
      },
    },
    {
      types: ["keyword", "operator"],
      style: {
        color: "${syntax.purple}",
      },
    },
    {
      types: ["constant", "boolean", "attr-name"],
      style: {
        color: "${syntax.yellow}",
      },
    },
    {
      types: ["comment"],
      style: {
        color: "${syntax.comment}",
        fontStyle: "italic",
      },
    },
  ],
};
]],
    colors
  )
end

return M
