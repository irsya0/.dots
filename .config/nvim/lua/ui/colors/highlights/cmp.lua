local base32 = require("ui.colors.engine").get_theme_tb "base_30"
local base16 = require("ui.colors.engine").get_theme_tb "base_16"

local highlights = {
    CmpItemAbbr = { fg = base32.white },
    CmpItemAbbrMatch = { fg = base32.blue, bold = true },
    CmpDocBorder = { fg = base32.darker_black, bg = base32.darker_black },
    CmpSel = { link = "PmenuSel", bold = true },
    CmpItemMenu = { fg = base32.light_grey, italic = true },
    CmpPmenu = { bg = base32.black2 },
    CmpDoc = { bg = base32.darker_black },
    CmpDocBorder = { fg = base32.darker_black, bg = base32.darker_black }
}

local item_kinds = {
    -- cmp item kinds
    CmpItemKindConstant = { fg = base16.base09 },
    CmpItemKindFunction = { fg = base16.base0D },
    CmpItemKindIdentifier = { fg = base16.base08 },
    CmpItemKindField = { fg = base16.base08 },
    CmpItemKindVariable = { fg = base16.base0E },
    CmpItemKindSnippet = { fg = base32.red },
    CmpItemKindText = { fg = base16.base0B },
    CmpItemKindStructure = { fg = base16.base0E },
    CmpItemKindType = { fg = base16.base0A },
    CmpItemKindKeyword = { fg = base16.base07 },
    CmpItemKindMethod = { fg = base16.base0D },
    CmpItemKindConstructor = { fg = base32.blue },
    CmpItemKindFolder = { fg = base16.base07 },
    CmpItemKindModule = { fg = base16.base0A },
    CmpItemKindProperty = { fg = base16.base08 },
    CmpItemKindEnum = { fg = base32.blue },
    CmpItemKindUnit = { fg = base16.base0E },
    CmpItemKindClass = { fg = base32.teal },
    CmpItemKindFile = { fg = base16.base07 },
    CmpItemKindInterface = { fg = base32.green },
    CmpItemKindColor = { fg = base32.white },
    CmpItemKindReference = { fg = base16.base05 },
    CmpItemKindEnumMember = { fg = base32.purple },
    CmpItemKindStruct = { fg = base16.base0E },
    CmpItemKindValue = { fg = base32.cyan },
    CmpItemKindEvent = { fg = base32.yellow },
    CmpItemKindOperator = { fg = base16.base05 },
    CmpItemKindTypeParameter = { fg = base16.base08 },
    CmpItemKindCopilot = { fg = base32.green },
}

local generate_color = require("utils.colors").change_hex_lightness

for key, value in pairs(item_kinds) do
    item_kinds[key] = { fg = base32.black, bg = generate_color(value.fg, -3), bold = true }
end

highlights = vim.tbl_deep_extend("force", highlights, item_kinds)

return highlights
