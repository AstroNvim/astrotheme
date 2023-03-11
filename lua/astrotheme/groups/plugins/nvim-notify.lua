local function callback()
  return {
    NotifyBackground = { bg = C.base },
    NotifyERRORBorder = { fg = C.red },
    NotifyWARNBorder = { fg = C.dark_orange },
    NotifyINFOBorder = { fg = C.green },
    NotifyDEBUGBorder = { fg = C.cyan },
    NotifyTRACERBorder = { fg = C.purple },
    NotifyERRORIcon = { fg = C.red },
    NotifyWARNIcon = { fg = C.dark_orange },
    NotifyINFOIcon = { fg = C.green },
    NotifyDEBUGIcon = { fg = C.cyan },
    NotifyTRACEIcon = { fg = C.purple },
    NotifyERRORTitle = { fg = C.red },
    NotifyWARNTitle = { fg = C.dark_orange },
    NotifyINFOTitle = { fg = C.green },
    NotifyDEBUGTitle = { fg = C.cyan },
    NotifyTRACETitle = { fg = C.purple },
    NotifyERRORBody = { fg = C.text },
    NotifyWARNBody = { fg = C.text },
    NotifyINFOBody = { fg = C.text },
    NotifyDEBUGBody = { fg = C.text },
    NotifyTRACEBody = { fg = C.text },
    NotifyLogTime = { fg = C.subtext1 },
    NotifyLogTitle = { fg = C.blue },
  }
end

return callback
