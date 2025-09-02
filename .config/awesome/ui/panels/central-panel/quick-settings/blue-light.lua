local awful = require("awful")
local gears = require("gears")
local button = require("ui.panels.central-panel.quick-settings.button")

--- Blue-Light Widget
--- ~~~~~~~~~~~~~~~~~

local blue_light_state = false

local widget = button("")

local update_widget = function()
    if blue_light_state then
        widget:turn_on()
    else
        widget:turn_off()
    end
end

local kill_state = function()
    awful.spawn.easy_async_with_shell(
        [[
		redshift -x
		kill -9 $(pgrep redshift)
		]],
        function(stdout)
            stdout = tonumber(stdout)
            if stdout then
                blue_light_state = false
                update_widget()
            end
        end
    )
end

kill_state()

local toggle_action = function()
    awful.spawn.easy_async_with_shell(
        [[
		if [ ! -z $(pgrep redshift) ];
		then
			redshift -x && pkill redshift && killall redshift
			echo 'OFF'
		else
			redshift -l 0:0 -t 4500:4500 -r &>/dev/null &
			echo 'ON'
		fi
		]],
        function(stdout)
            if stdout:match("ON") then
                blue_light_state = true
            else
                blue_light_state = false
            end
            update_widget()
        end
    )
end

widget:buttons(gears.table.join(awful.button({}, 1, nil, function()
    toggle_action()
end)))

return widget
