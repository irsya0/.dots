local lazy = function(install_path)
	vim.cmd "redraw"
	vim.api.nvim_echo({ { "  Installing lazy.nvim & plugins ...", "Bold" } }, true, {})
	local repo = "https://github.com/folke/lazy.nvim.git"
	vim.fn.system { "git", "clone", "--filter=blob:none", "--branch=stable", repo, install_path }
	vim.opt.rtp:prepend(install_path)

	-- install plugins
	require "plugins"
end

local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
	lazy(lazypath)
end

vim.opt.rtp:prepend(lazypath)
