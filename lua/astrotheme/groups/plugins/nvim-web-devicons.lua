---@type AstroThemeCallback
local function callback(c)
  return {
    DevIconC = { fg = c.icon.c },
    DevIconCss = { fg = c.icon.css },
    DevIconDeb = { fg = c.icon.deb },
    DevIconDockerfile = { fg = c.icon.docker },
    DevIconHtml = { fg = c.icon.html },
    DevIconJpeg = { fg = c.icon.jpeg },
    DevIconJpg = { fg = c.icon.jpg },
    DevIconJs = { fg = c.icon.js },
    DevIconJsx = { fg = c.icon.jsx },
    DevIconKotlin = { fg = c.icon.kt },
    DevIconLock = { fg = c.icon.lock },
    DevIconLua = { fg = c.icon.lua },
    DevIconMp3 = { fg = c.icon.mp3 },
    DevIconMp4 = { fg = c.icon.mp4 },
    DevIconOut = { fg = c.icon.out },
    DevIconPng = { fg = c.icon.png },
    DevIconPy = { fg = c.icon.py },
    DevIconRb = { fg = c.icon.rb },
    DevIconRobots = { fg = c.icon.robots },
    DevIconRpm = { fg = c.icon.rpm },
    DevIconRs = { fg = c.icon.rs },
    DevIconToml = { fg = c.icon.toml },
    DevIconTrueTypeFont = { fg = c.icon.ttf },
    DevIconTs = { fg = c.icon.ts },
    DevIconVue = { fg = c.icon.vue },
    DevIconWebOpenFontFormat = { fg = c.icon.woff },
    DevIconWebOpenFontFormat2 = { fg = c.icon.woff2 },
    DevIconXz = { fg = c.icon.zip },
    DevIconZip = { fg = c.icon.zip },
    DevIconMd = { fg = c.icon.md },
    DevIconPackageJson = { fg = c.icon.pkg },
    DevIconPackageLockJson = { fg = c.icon.pkg },
  }
end

return callback
