local bsae32 = require("ui.colors.engine").get_theme_tb "base_30"

local M = {

    TelescopePromptPrefix = {
        fg = bsae32.red,
        bg = bsae32.black2,
    },

    TelescopeNormal = { bg = bsae32.darker_black },

    TelescopePreviewTitle = {
        fg = bsae32.black,
        bg = bsae32.green,
    },

    TelescopePromptTitle = {
        fg = bsae32.black,
        bg = bsae32.red,
    },

    TelescopeSelection = { bg = bsae32.black2, fg = bsae32.white },
    TelescopeResultsDiffAdd = { fg = bsae32.green },
    TelescopeResultsDiffChange = { fg = bsae32.yellow },
    TelescopeResultsDiffDelete = { fg = bsae32.red },
            
    TelescopeBorder = { fg = bsae32.darker_black, bg = bsae32.darker_black },
    TelescopePromptBorder = { fg = bsae32.black2, bg = bsae32.black2 },
    TelescopePromptNormal = { fg = bsae32.white, bg = bsae32.black2 },
    TelescopeResultsTitle = { fg = bsae32.darker_black, bg = bsae32.darker_black },
    TelescopePromptPrefix = { fg = bsae32.red, bg = bsae32.black2 }
}

return M
