local function callback(opts)
  local border_bg = (opts.inactive and C.ui.base)
    or (opts.popup and C.ui.base)
    or (opts.transparent and C.none)
    or C.ui.base

  return {
    NotifyBackground = { link = "NormalPopup" },

    NotifyERRORBorder = { fg = C.ui.red, bg = border_bg },
    NotifyWARNBorder = { fg = C.ui.orange, bg = border_bg },
    NotifyINFOBorder = { fg = C.ui.green, bg = border_bg },
    NotifyDEBUGBorder = { fg = C.ui.cyan, bg = border_bg },
    NotifyTRACERBorder = { fg = C.ui.purple, bg = border_bg },

    NotifyERRORIcon = { fg = C.ui.red },
    NotifyWARNIcon = { fg = C.ui.orange },
    NotifyINFOIcon = { fg = C.ui.green },
    NotifyDEBUGIcon = { fg = C.ui.cyan },
    NotifyTRACEIcon = { fg = C.ui.purple },

    NotifyERRORTitle = { fg = C.ui.red },
    NotifyWARNTitle = { fg = C.ui.orange },
    NotifyINFOTitle = { fg = C.ui.green },
    NotifyDEBUGTitle = { fg = C.ui.cyan },
    NotifyTRACETitle = { fg = C.ui.purple },

    NotifyERRORBody = { fg = C.ui.text, bg = border_bg },
    NotifyWARNBody = { fg = C.ui.text, bg = border_bg },
    NotifyINFOBody = { fg = C.ui.text, bg = border_bg },
    NotifyDEBUGBody = { fg = C.ui.text, bg = border_bg },
    NotifyTRACEBody = { fg = C.ui.text, bg = border_bg },

    NotifyLogTime = { fg = C.ui.text_inactive },
    NotifyLogTitle = { fg = C.ui.blue },
  }
end

return callback
