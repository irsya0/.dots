local awful = require("awful")
local gears = require("gears")
local apps = require("configuration.apps")
local button = require("ui.panels.central-panel.quick-settings.button")

--- Lock Widget
--- ~~~~~~~~~~~~~~~~~~~~

local widget = button("")

widget:buttons(gears.table.join(awful.button({}, 1, nil, function()
    awful.spawn.easy_async_with_shell(apps.default.lock_screen, function() end)
end)))

return widget
