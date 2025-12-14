local M = {}

M.ui = {
    theme = "aether",
    transparency = false,
    lsp_semantic_tokens = true,
    cmp = {
        icons = true,
        lspkind_text = true,
        style = "atom_colored",
        border_color = "grey_fg",
        selected_item_bg = "colored",
    },
    telescope = { style = "borderless" }, -- borderless / bordered
    statusline = {
        separator_style = "block",        -- block / round
    },
    icons = {
        lspkind = require "ui.icons.lspkind",
        devicons = require "ui.icons.devicons",
    },
    term = {
        winopts = { number = false, relativenumber = false },
        sizes = { sp = 0.3, vsp = 0.2, ["bo sp"] = 0.3, ["bo vsp"] = 0.2 },
        float = {
            relative = "editor",
            row = 0.15,
            col = 0.15,
            width = 0.7,
            height = 0.7,
            border = "single",
        },
    },
}

M.mappings = require("core.mappings")

M.lazy_nvim = require "plugins.configs.lazy_nvim" -- config for lazy.nvim startup options

return M
