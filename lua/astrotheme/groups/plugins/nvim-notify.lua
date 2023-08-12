local function callback(opts)
  local bg = (opts.transparent and C.none) or C.ui.tool

  return {
    NotifyBackground = {
      fg = C.ui.text,
      bg = C.ui.base,
    },

    NotifyERRORBorder = { fg = C.ui.red, bg = bg },
    NotifyWARNBorder = { fg = C.ui.orange, bg = bg },
    NotifyINFOBorder = { fg = C.ui.green, bg = bg },
    NotifyDEBUGBorder = { fg = C.ui.cyan, bg = bg },
    NotifyTRACERBorder = { fg = C.ui.purple, bg = bg },

    NotifyERRORIcon = { fg = C.ui.red, bg = bg },
    NotifyWARNIcon = { fg = C.ui.orange, bg = bg },
    NotifyINFOIcon = { fg = C.ui.green, bg = bg },
    NotifyDEBUGIcon = { fg = C.ui.cyan, bg = bg },
    NotifyTRACEIcon = { fg = C.ui.purple, bg = bg },

    NotifyERRORTitle = { fg = C.ui.red, bg = bg },
    NotifyWARNTitle = { fg = C.ui.orange, bg = bg },
    NotifyINFOTitle = { fg = C.ui.green, bg = bg },
    NotifyDEBUGTitle = { fg = C.ui.cyan, bg = bg },
    NotifyTRACETitle = { fg = C.ui.purple, bg = bg },

    NotifyERRORBody = { fg = C.ui.text, bg = bg },
    NotifyWARNBody = { fg = C.ui.text, bg = bg },
    NotifyINFOBody = { fg = C.ui.text, bg = bg },
    NotifyDEBUGBody = { fg = C.ui.text, bg = bg },
    NotifyTRACEBody = { fg = C.ui.text, bg = bg },

    NotifyLogTime = { fg = C.ui.text_inactive, bg = bg },
    NotifyLogTitle = { fg = C.ui.blue, bg = bg },
  }
end

return callback
