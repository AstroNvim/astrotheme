local function callback()
  return {
    NotifyBackground = { bg = C.ui.base },
    NotifyERRORBorder = { fg = C.syntax.red },
    NotifyWARNBorder = { fg = C.ui.orange },
    NotifyINFOBorder = { fg = C.syntax.green },
    NotifyDEBUGBorder = { fg = C.syntax.cyan },
    NotifyTRACERBorder = { fg = C.syntax.purple },
    NotifyERRORIcon = { fg = C.syntax.red },
    NotifyWARNIcon = { fg = C.ui.orange },
    NotifyINFOIcon = { fg = C.syntax.green },
    NotifyDEBUGIcon = { fg = C.syntax.cyan },
    NotifyTRACEIcon = { fg = C.syntax.purple },
    NotifyERRORTitle = { fg = C.syntax.red },
    NotifyWARNTitle = { fg = C.ui.orange },
    NotifyINFOTitle = { fg = C.syntax.green },
    NotifyDEBUGTitle = { fg = C.syntax.cyan },
    NotifyTRACETitle = { fg = C.syntax.purple },
    NotifyERRORBody = { fg = C.syntax.text },
    NotifyWARNBody = { fg = C.syntax.text },
    NotifyINFOBody = { fg = C.syntax.text },
    NotifyDEBUGBody = { fg = C.syntax.text },
    NotifyTRACEBody = { fg = C.syntax.text },
    NotifyLogTime = { fg = C.syntax.subtext0 },
    NotifyLogTitle = { fg = C.syntax.blue },
  }
end

return callback
