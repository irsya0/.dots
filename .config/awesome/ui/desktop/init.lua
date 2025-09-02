local name = require(... .. ".name")
local icons = require(... .. ".icons")
local dashboard = require(... .. ".dashboard")

return function(s)
    name(s)
    icons(s)
    dashboard(s)
end
