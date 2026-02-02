local plugins = {}

local spec_tab = {
  require(... .. ".icons"),
  require(... .. ".navigation"),
}

for _, x in pairs(spec_tab) do
  vim.list_extend(plugins, x)
end

return plugins
