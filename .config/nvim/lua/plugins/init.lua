local opts = {
    defaults = { lazy = true },
    install = { colorscheme = { "nvchad" } },

    ui = {
        icons = {
            ft = "",
            lazy = "󰂠 ",
            loaded = "",
            not_loaded = "",
        },
    },
    performance = {
        rtp = {
            disabled_plugins = {
                "getscript",
                "getscriptPlugin",
                "gzip",
                "logipat",
                "matchit",
                "tar",
                "tarPlugin",
                "rrhelper",
                "vimball",
                "vimballPlugin",
                "zip",
                "zipPlugin",
                "syntax",
                "synmenu",
                "optwin",
                "bugreport",
                "netrw",
                "netrwPlugin",
                "netrwSettings",
                "netrwFileHandlers",
            },
        },
    },
}

local plugins = {}

local path = ...

local spec_tab = {
    ".treesitter",
    ".lsp",
    ".editor"
}

for _, x in pairs(spec_tab) do
    vim.list_extend(plugins, require(path .. x))
end

vim.loader.enable()
require("lazy").setup(plugins, opts)
