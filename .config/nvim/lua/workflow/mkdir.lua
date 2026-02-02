local fn = vim.fn

function mkdir()
  local dir = fn.expand('<afile>:p:h')

  -- This handles URLs using netrw. See ':help netrw-transparent' for details.
  if dir:find('%l+://') == 1 then
    return
  end

  if fn.isdirectory(dir) == 0 then
    fn.mkdir(dir, 'p')
  end
end

-- Create an autocommand for "BufRead" events
vim.api.nvim_create_autocmd("BufWritePre", {
  callback = function()
      mkdir()
  end
})
