---@diagnostic disable: undefined-field
require "core"
require("core.utils").load_mappings()
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
-- bootstrap lazy.nvim!
if not vim.loop.fs_stat(lazypath) then
    require("core.bootstrap").lazy(lazypath)
end
vim.opt.rtp:prepend(lazypath)

vim.cmd "language en_US.utf8"

require "plugins"
require "ui"
