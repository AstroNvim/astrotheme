---@type AstroThemeCallback
local function callback(c)
  return {
    AerialNormal = { fg = c.ui.text },
    AerialArrayIcon = "@constant",
    AerialBooleanIcon = "@boolean",
    AerialClassIcon = "@type",
    AerialConstantIcon = "@constant",
    AerialConstructorIcon = "@constructor",
    AerialEnumIcon = "@type",
    AerialEnumMemberIcon = "@field",
    AerialEventIcon = "@type",
    AerialFieldIcon = "@field",
    AerialFileIcon = "@text.uri",
    AerialFunctionIcon = "@function",
    AerialGuide = { fg = c.ui.none_text },
    AerialInterfaceIcon = "@type",
    AerialKeyIcon = "@type",
    AerialLine = { fg = c.ui.accent, bg = c.none },
    AerialMethodIcon = "@method",
    AerialModuleIcon = "@namespace",
    AerialNamespaceIcon = "@namespace",
    AerialNullIcon = "@type",
    AerialNumberIcon = "@number",
    AerialObjectIcon = "@type",
    AerialOperatorIcon = "@operator",
    AerialPackageIcon = "@namespace",
    AerialPropertyIcon = "@property",
    AerialStringIcon = "@string",
    AerialStructIcon = "@type",
    AerialTypeIcon = "@type",
    AerialTypeParameterIcon = "@parameter",
    AerialVariableIcon = "@variable",
  }
end

return callback
