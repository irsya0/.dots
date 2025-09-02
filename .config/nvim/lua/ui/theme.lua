local g = vim.g
THEME_REGISTRY = {}

local M = {}

M.register_theme = function(name, colors)
    THEME_REGISTRY[name] = colors
end

M.load_theme = function(name)
    g.theme = THEME_REGISTRY[name]
end

M.get_theme = function()
    return g.theme
end

M.list_themes = function()
    local keys = {}
    for k in pairs(THEME_REGISTRY) do
        keys[#keys + 1] = k
    end
    return keys
end

M.get_theme_tb = function(tb)
    return g.theme[tb]
end

M.register_highlights = function(highlights)
    for name, val in pairs(highlights) do
        vim.api.nvim_set_hl(0, name, val)
    end
end

M.overwrite_highlights = function()
    local hl = g.theme.hl_overwrite
    if hl then
        for name, val in pairs(hl) do
            vim.api.nvim_set_hl(0, name, val)
        end
    end
end

M.load_all_highlights = function()
    require("plenary.reload").reload_module("ui.hl", true)
    local highlights = require("ui.hl")

    for _, hl in pairs(highlights) do
        M.register_highlights(hl)
    end
    M.overwrite_highlights()
end

return M
