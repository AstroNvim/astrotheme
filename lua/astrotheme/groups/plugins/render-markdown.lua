---@type AstroThemeCallback
local function callback(c)
  local color = require "astrotheme.lib.color"

  return {
    RenderMarkdownH1 = { link = "@markup.heading.1.markdown" },
    RenderMarkdownH2 = { link = "@markup.heading.2.markdown" },
    RenderMarkdownH3 = { link = "@markup.heading.3.markdown" },
    RenderMarkdownH4 = { link = "@markup.heading.4.markdown" },
    RenderMarkdownH5 = { link = "@markup.heading.5.markdown" },
    RenderMarkdownH6 = { link = "@markup.heading.6.markdown" },

    RenderMarkdownH1Bg = {
      fg = c.syntax.purple,
      bg = color.new(c.syntax.purple):blend(color.new(c.ui.base), 0.75):tohex(),
      bold = true,
    },
    RenderMarkdownH2Bg = {
      fg = c.syntax.blue,
      bg = color.new(c.syntax.blue):blend(color.new(c.ui.base), 0.75):tohex(),
      bold = true,
    },
    RenderMarkdownH3Bg = {
      fg = c.syntax.cyan,
      bg = color.new(c.syntax.cyan):blend(color.new(c.ui.base), 0.75):tohex(),
      bold = true,
    },
    RenderMarkdownH4Bg = {
      fg = c.syntax.green,
      bg = color.new(c.syntax.green):blend(color.new(c.ui.base), 0.75):tohex(),
      bold = true,
    },
    RenderMarkdownH5Bg = {
      fg = c.syntax.yellow,
      bg = color.new(c.syntax.yellow):blend(color.new(c.ui.base), 0.75):tohex(),
      bold = true,
    },
    RenderMarkdownH6Bg = {
      fg = c.syntax.purple,
      bg = color.new(c.syntax.yellow):blend(color.new(c.ui.base), 0.75):tohex(),
      bold = true,
    },

    RenderMarkdownCode = { bg = c.ui.tool },
    RenderMarkDownBullet = { link = "@markup.list.markdown" },
    RenderMarkdownChecked = { link = "@markup.list.checked" },
    RenderMarkdownUnchecked = { link = "@markup.list.unchecked" },
    RenderMarkdownTodo = { fg = c.ui.green, bold = true },
    RenderMarkDownLink = { fg = c.ui.blue, bold = true },
  }
end

return callback
