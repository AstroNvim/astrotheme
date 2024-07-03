---@type AstroThemeCallback
local function callback(colors, opts)
  local bg = (opts.transparent and colors.none) or colors.ui.tool

  return {
    NotifyBackground = {
      fg = colors.ui.text,
      bg = colors.ui.base,
    },

    NotifyERRORBorder = { fg = colors.ui.red, bg = bg },
    NotifyWARNBorder = { fg = colors.ui.orange, bg = bg },
    NotifyINFOBorder = { fg = colors.ui.green, bg = bg },
    NotifyDEBUGBorder = { fg = colors.ui.cyan, bg = bg },
    NotifyTRACERBorder = { fg = colors.ui.purple, bg = bg },

    NotifyERRORIcon = { fg = colors.ui.red, bg = bg },
    NotifyWARNIcon = { fg = colors.ui.orange, bg = bg },
    NotifyINFOIcon = { fg = colors.ui.green, bg = bg },
    NotifyDEBUGIcon = { fg = colors.ui.cyan, bg = bg },
    NotifyTRACEIcon = { fg = colors.ui.purple, bg = bg },

    NotifyERRORTitle = { fg = colors.ui.red, bg = bg },
    NotifyWARNTitle = { fg = colors.ui.orange, bg = bg },
    NotifyINFOTitle = { fg = colors.ui.green, bg = bg },
    NotifyDEBUGTitle = { fg = colors.ui.cyan, bg = bg },
    NotifyTRACETitle = { fg = colors.ui.purple, bg = bg },

    NotifyERRORBody = { fg = colors.ui.text, bg = bg },
    NotifyWARNBody = { fg = colors.ui.text, bg = bg },
    NotifyINFOBody = { fg = colors.ui.text, bg = bg },
    NotifyDEBUGBody = { fg = colors.ui.text, bg = bg },
    NotifyTRACEBody = { fg = colors.ui.text, bg = bg },

    NotifyLogTime = { fg = colors.ui.text_inactive, bg = bg },
    NotifyLogTitle = { fg = colors.ui.blue, bg = bg },
  }
end

return callback
