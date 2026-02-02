local ns = _G.NVIM_STATE

local M = {}

M.add_theme = function(theme)
    ns["themes"] = ns["themes"] or {}
    ns["themes_list"] = ns["themes_list"] or {}
    ns["themes"][theme.name] = theme
    table.insert(ns["themes_list"], theme.name)
end

M.load_theme = function(name)
    ns["theme"] = ns["themes"][name]
end

M.get_theme = function()
    return ns["theme"]
end

M.get_themes_list = function()
    return ns["themes_list"]
end

M.get_theme_tb = function(tb)
    return ns["theme"][tb]
end

M.register_highlights = function(highlights)
    for name, val in pairs(highlights) do
        vim.api.nvim_set_hl(0, name, val)
    end
end

-- Overwrites theme-specific highlights
M.overwrite_highlights = function()
    local hl = ns["theme"].hl_overwrite
    if hl then
        for name, val in pairs(hl) do
            vim.api.nvim_set_hl(0, name, val)
        end
    end
end

return M
