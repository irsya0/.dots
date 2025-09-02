vim.opt.statusline = "%!v:lua.require('ui.components.statusline.line').run()"

vim.api.nvim_create_autocmd("User", {
  pattern = "LspProgressUpdate",
  callback = function()
    vim.cmd "redrawstatus"
  end,
})
