local awful = require("awful")
local gears = require("gears")
local config_dir = gears.filesystem.get_configuration_dir()
local widget_dir = config_dir .. "ui/panels/central-panel/quick-settings/dnd/"
local button = require("ui.panels.central-panel.quick-settings.button")

--- Do not Disturb Widget
--- ~~~~~~~~~~~~~~~~~~~~~

_G.dnd_state = false

local widget = button("")

local update_widget = function()
    if dnd_state then
        widget:turn_on()
    else
        widget:turn_off()
    end
end

local check_dnd_status = function()
    awful.spawn.easy_async_with_shell("cat " .. widget_dir .. "dnd_status", function(stdout)
        local status = stdout

        if status:match("true") then
            dnd_state = true
        elseif status:match("false") then
            dnd_state = false
        else
            dnd_state = false
            awful.spawn.with_shell("echo 'false' > " .. widget_dir .. "dnd_status")
        end

        update_widget()
    end)
end

check_dnd_status()

local toggle_action = function()
    if dnd_state then
        dnd_state = false
    else
        dnd_state = true
    end
    awful.spawn.easy_async_with_shell("echo " .. tostring(dnd_state) .. " > " .. widget_dir .. "dnd_status", function()
        update_widget()
    end)
end

widget:buttons(gears.table.join(awful.button({}, 1, nil, function()
    toggle_action()
end)))

return widget
