local opt = vim.opt
local g = vim.g

-------------------------------------- globals -----------------------------------------
g.lsp = {
    "lua_ls"
}
g.transparency = false
g.theme = "aether"

-------------------------------------- options ------------------------------------------
opt.laststatus = 3 -- global statusline
opt.showmode = false
opt.wrap = false
opt.linebreak = true
opt.conceallevel = 2
opt.splitkeep = "screen"
vim.g.markdown_fenced_languages = {
    "ts=typescript",
}

opt.clipboard = "unnamedplus"
opt.cursorline = true
opt.relativenumber = true

-- Indenting
opt.expandtab = true
opt.shiftwidth = 4
opt.smartindent = true
opt.tabstop = 4
opt.softtabstop = 4

opt.fillchars = { eob = " " }
opt.ignorecase = true
opt.smartcase = true
opt.mouse = "a"
opt.mousemoveevent = true

-- Numbers
opt.number = true
opt.numberwidth = 2
opt.ruler = true

-- disable nvim intro
opt.shortmess:append "sI"

opt.signcolumn = "yes"
opt.splitbelow = true
opt.splitright = true
opt.termguicolors = true
opt.timeoutlen = 400
opt.undofile = true

-- interval for writing swap file to disk, also used by gitsigns
opt.updatetime = 250

-- go to previous/next line with h,l,left arrow and right arrow
-- when cursor reaches end/beginning of line
opt.whichwrap:append "<>[]hl"

g.mapleader = " "
g.maplocalelader = "\\"

g.instant_username = "irsya"

-- lazygit
g.lazygit_floating_window_winblend = 0 -- transparency of floating window
g.lazygit_floating_window_scaling_factor = 0.9 -- scaling factor for floating window
g.lazygit_floating_window_border_chars = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" } -- customize lazygit popup window border characters
g.lazygit_floating_window_use_plenary = 0 -- use plenary.nvim to manage floating window if available
g.lazygit_use_neovim_remote = 1 -- fallback to 0 if neovim-remote is not installed

-- use icons for lsp
local serverities = vim.diagnostic.severity

vim.diagnostic.config {
    virtual_text = { prefix = "" },
    signs = { text = { [serverities.ERROR] = "󰅙", [serverities.WARN] = "", [serverities.INFO] = "󰋼", [serverities.HINT] = "󰌵" } },
    underline = true,
    float = { border = "single" },
}

-- g.lazygit_use_custom_config_file_path = 0 -- config file path is evaluated if this value is 1
-- g.lazygit_config_file_path = "" -- custom config file path

-- add binaries installed by mason.nvim to path
local is_windows = vim.loop.os_uname().sysname == "Windows_NT"
local path_seperator = (is_windows and ";" or ":")
vim.env.PATH = vim.fn.stdpath "data" .. "/mason/bin" .. path_seperator .. vim.env.PATH
package.path = package.path .. ";" .. vim.fn.expand "$HOME" .. "/.luarocks/share/lua/5.1/?/init.lua;"
package.path = package.path .. ";" .. vim.fn.expand "$HOME" .. "/.luarocks/share/lua/5.1/?.lua;"
-------------------------------------- autocmds ------------------------------------------
local autocmd = vim.api.nvim_create_autocmd

-- dont list quickfix buffers
autocmd("FileType", {
    pattern = "qf",
    callback = function()
        vim.opt_local.buflisted = false
    end,
})
