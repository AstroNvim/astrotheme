---@type AstroThemeCallback
local function callback(c, opts)
  local bg = (opts.transparent and c.none) or c.ui.tool

  return {
    NotifyBackground = {
      fg = c.ui.text,
      bg = c.ui.base,
    },

    NotifyERRORBorder = { fg = c.ui.red, bg = bg },
    NotifyWARNBorder = { fg = c.ui.orange, bg = bg },
    NotifyINFOBorder = { fg = c.ui.green, bg = bg },
    NotifyDEBUGBorder = { fg = c.ui.cyan, bg = bg },
    NotifyTRACERBorder = { fg = c.ui.purple, bg = bg },

    NotifyERRORIcon = { fg = c.ui.red, bg = bg },
    NotifyWARNIcon = { fg = c.ui.orange, bg = bg },
    NotifyINFOIcon = { fg = c.ui.green, bg = bg },
    NotifyDEBUGIcon = { fg = c.ui.cyan, bg = bg },
    NotifyTRACEIcon = { fg = c.ui.purple, bg = bg },

    NotifyERRORTitle = { fg = c.ui.red, bg = bg },
    NotifyWARNTitle = { fg = c.ui.orange, bg = bg },
    NotifyINFOTitle = { fg = c.ui.green, bg = bg },
    NotifyDEBUGTitle = { fg = c.ui.cyan, bg = bg },
    NotifyTRACETitle = { fg = c.ui.purple, bg = bg },

    NotifyERRORBody = { fg = c.ui.text, bg = bg },
    NotifyWARNBody = { fg = c.ui.text, bg = bg },
    NotifyINFOBody = { fg = c.ui.text, bg = bg },
    NotifyDEBUGBody = { fg = c.ui.text, bg = bg },
    NotifyTRACEBody = { fg = c.ui.text, bg = bg },

    NotifyLogTime = { fg = c.ui.text_inactive, bg = bg },
    NotifyLogTitle = { fg = c.ui.blue, bg = bg },
  }
end

return callback
