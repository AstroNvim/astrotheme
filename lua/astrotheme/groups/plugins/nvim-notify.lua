local function callback()
  return {
    NotifyBackground = { bg = C.ui.base },
    NotifyERRORBorder = { fg = C.ui.red },
    NotifyWARNBorder = { fg = C.ui.orange },
    NotifyINFOBorder = { fg = C.ui.green },
    NotifyDEBUGBorder = { fg = C.ui.cyan },
    NotifyTRACERBorder = { fg = C.ui.purple },
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
    NotifyERRORBody = { fg = C.ui.text },
    NotifyWARNBody = { fg = C.ui.text },
    NotifyINFOBody = { fg = C.ui.text },
    NotifyDEBUGBody = { fg = C.ui.text },
    NotifyTRACEBody = { fg = C.ui.text },
    NotifyLogTime = { fg = C.ui.text_inactive },
    NotifyLogTitle = { fg = C.ui.blue },
  }
end

return callback
