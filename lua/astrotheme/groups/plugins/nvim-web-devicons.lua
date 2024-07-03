---@type AstroThemeCallback
local function callback(colors)
  return {
    DevIconC = { fg = colors.icon.c },
    DevIconCss = { fg = colors.icon.css },
    DevIconDeb = { fg = colors.icon.deb },
    DevIconDockerfile = { fg = colors.icon.docker },
    DevIconHtml = { fg = colors.icon.html },
    DevIconJpeg = { fg = colors.icon.jpeg },
    DevIconJpg = { fg = colors.icon.jpg },
    DevIconJs = { fg = colors.icon.js },
    DevIconJsx = { fg = colors.icon.jsx },
    DevIconKotlin = { fg = colors.icon.kt },
    DevIconLock = { fg = colors.icon.lock },
    DevIconLua = { fg = colors.icon.lua },
    DevIconMp3 = { fg = colors.icon.mp3 },
    DevIconMp4 = { fg = colors.icon.mp4 },
    DevIconOut = { fg = colors.icon.out },
    DevIconPng = { fg = colors.icon.png },
    DevIconPy = { fg = colors.icon.py },
    DevIconRb = { fg = colors.icon.rb },
    DevIconRobots = { fg = colors.icon.robots },
    DevIconRpm = { fg = colors.icon.rpm },
    DevIconRs = { fg = colors.icon.rs },
    DevIconToml = { fg = colors.icon.toml },
    DevIconTrueTypeFont = { fg = colors.icon.ttf },
    DevIconTs = { fg = colors.icon.ts },
    DevIconVue = { fg = colors.icon.vue },
    DevIconWebOpenFontFormat = { fg = colors.icon.woff },
    DevIconWebOpenFontFormat2 = { fg = colors.icon.woff2 },
    DevIconXz = { fg = colors.icon.zip },
    DevIconZip = { fg = colors.icon.zip },
    DevIconMd = { fg = colors.icon.md },
    DevIconPackageJson = { fg = colors.icon.pkg },
    DevIconPackageLockJson = { fg = colors.icon.pkg },
  }
end

return callback
