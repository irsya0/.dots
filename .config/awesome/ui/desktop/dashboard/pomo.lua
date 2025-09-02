local awful      = require("awful")
local wibox      = require("wibox")
local beautiful  = require("beautiful")
local dpi        = require("beautiful").xresources.apply_dpi
local widgets    = require("ui.widgets")
local gears      = require("gears")
local helpers    = require("helpers")
local pomodoro   = require("modules.pomodoro")
local naughty    = require("naughty")

local pomo_clock = pomodoro:new(25, 5, 15) -- session, short break, long break
local hovered    = false

local focus_icon = "󰧑"
local break_icon = "󰉛"

local clock      = wibox.widget({
    {
        {
            id = "icon",
            align = "center",
            valign = "center",
            font = beautiful.icon_font .. "Round 20",
            markup = helpers.ui.colorize_text(focus_icon, beautiful.widget_bg),
            widget = wibox.widget.textbox,
        },
        bg = beautiful.accent .. "CC",
        widget = wibox.container.background,
    },
    max_value = 100,
    min_value = 0,
    value = 100,
    thickness = dpi(10),
    rounded_edge = true,
    bg = beautiful.accent .. "88",
    colors = { beautiful.widget_bg },
    start_angle = math.pi + math.pi / 2,
    forced_width = beautiful.widget_block(1),
    forced_height = beautiful.widget_block(1),
    widget = wibox.container.arcchart,
})

local function get_current_duration(mode)
    if mode then
        return pomo_clock.session_duration
    elseif pomo_clock.local_cycles % 4 == 0 then
        return pomo_clock.long_break_duration
    else
        return pomo_clock.break_duration
    end
end

local function update_clock_display(mode, remaining)
    local duration = get_current_duration(mode)
    clock.value = (remaining / duration) * 100

    local icon = mode and focus_icon or break_icon
    local markup = helpers.ui.colorize_text(icon, beautiful.widget_bg)
    clock:get_children_by_id("icon")[1]:set_markup(markup)
end

local function update_desktop_indicator()
    local minutes = math.floor(pomo_clock.remaining_time / 60)
    local seconds = math.floor(pomo_clock.remaining_time % 60)
    local mode = pomo_clock.working_mode and "FOCUS" or "BREAK"

    awesome.emit_signal("desktop::indicator::set", string.format("%d minutes %d seconds\n%s", minutes, seconds, mode))
end

-- Reset button (placeholder for reset functionality)
local reset_btn = widgets.button.text.state({
    forced_width = beautiful.widget_block(1),
    forced_height = beautiful.widget_block(1),
    normal_bg = beautiful.widget_bg .. "CC",
    text_normal_bg = beautiful.accent,
    hover_bg = beautiful.accent .. "CC",
    text_hover_bg = beautiful.widget_bg,
    normal_shape = gears.shape.circle,
    font = beautiful.icon_font .. "Round ",
    size = 20,
    text = "󰁯",
    on_press = function()
        pomo_clock:stop(
            function(remaining, mode)
                naughty.notification({
                    title = "Pomodoro",
                    text = "Reset",
                    app_name = "AwesomeWM",
                })

                update_clock_display(mode, remaining)
            end
        )
    end
})

-- Combined widget layout
local widget = wibox.widget({
    clock,
    reset_btn,
    spacing = dpi(beautiful.desktop_widget_margin_size),
    layout = wibox.layout.fixed.vertical,
})

-- Start or stop Pomodoro session
local function toggle_pomodoro()
    if not pomo_clock.running then
        pomo_clock:start(
            function(remaining, mode)
                update_clock_display(mode, remaining)
                naughty.notification({
                    title = "Pomodoro",
                    text = mode and "Focus" or "Break",
                    app_name = "AwesomeWM",
                })
            end,
            function(remaining, mode)
                update_clock_display(mode, remaining)
                if hovered then update_desktop_indicator() end
            end
        )
    else
        pomo_clock:pause(function()
            naughty.notification({
                title = "Pomodoro",
                text = "Paused",
                app_name = "AwesomeWM",
            })
        end)
    end
end

-- Interactions
clock:connect_signal("button::press", toggle_pomodoro)

clock:connect_signal("mouse::enter", function()
    hovered = true
    update_desktop_indicator()
end)

clock:connect_signal("mouse::leave", function()
    hovered = false
    awesome.emit_signal("desktop::indicator::reset")
end)

-- Return final widget
return function()
    return widget
end
