---@type AstroThemeCallback
local function callback()
  return {
    AerialNormal = { fg = C.ui.text },
    AerialArrayIcon = { link = "@constant" },
    AerialBooleanIcon = { link = "@boolean" },
    AerialClassIcon = { link = "@type" },
    AerialConstantIcon = { link = "@constant" },
    AerialConstructorIcon = { link = "@constructor" },
    AerialEnumIcon = { link = "@type" },
    AerialEnumMemberIcon = { link = "@field" },
    AerialEventIcon = { link = "@type" },
    AerialFieldIcon = { link = "@field" },
    AerialFileIcon = { link = "@text.uri" },
    AerialFunctionIcon = { link = "@function" },
    AerialGuide = { fg = C.ui.none_text },
    AerialInterfaceIcon = { link = "@type" },
    AerialKeyIcon = { link = "@type" },
    AerialLine = { fg = C.ui.accent, bg = C.none },
    AerialMethodIcon = { link = "@method" },
    AerialModuleIcon = { link = "@namespace" },
    AerialNamespaceIcon = { link = "@namespace" },
    AerialNullIcon = { link = "@type" },
    AerialNumberIcon = { link = "@number" },
    AerialObjectIcon = { link = "@type" },
    AerialOperatorIcon = { link = "@operator" },
    AerialPackageIcon = { link = "@namespace" },
    AerialPropertyIcon = { link = "@property" },
    AerialStringIcon = { link = "@string" },
    AerialStructIcon = { link = "@type" },
    AerialTypeIcon = { link = "@type" },
    AerialTypeParameterIcon = { link = "@parameter" },
    AerialVariableIcon = { link = "@variable" },
  }
end

return callback
