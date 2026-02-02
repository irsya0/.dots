local engine = require (... .. ".engine")
local themes = require(... .. ".themes")

for _, theme in ipairs(themes) do
    engine.add_theme(theme)
end

engine.load_theme(vim.g.theme)

local hl = require(... .. ".highlights")
engine.register_highlights(hl)
engine.overwrite_highlights()
