local devicons = require "nvim-web-devicons"

local file_icons = _G.NVIM_STATE["icons"].files

-- Names where the key is not the same as the name
local alt_names = {
    ["default_icon"] = "default",
    ["robots.txt"] = "robots",
    ["ttf"] = "TrueTypeFont",
    ["woff"] = "WebOpenFontFormat",
    ["woff2"] = "WebOpenFontFormat2",
}

local dev_icons = {}

for key, value in pairs(file_icons) do
    table.insert(dev_icons, {
        name = alt_names[key] or key,
        icon = value,
    })
end

devicons.setup { override = dev_icons }