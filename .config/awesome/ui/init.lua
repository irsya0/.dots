require(... .. ".notifications")

local decorations = require(... .. ".decorations")
decorations.init()

local top_panel = require(... .. ".panels.panel")
local central_panel = require(... .. ".panels.central-panel")
local notification_panel = require(... .. ".panels.notification-panel")
local desktop = require(... .. ".desktop")
local scratchpad = require(... .. ".scratchpad")

local awful = require("awful")
awful.screen.connect_for_each_screen(function(s)
    --- Desktop
    desktop(s)
    --- Panels
    top_panel(s)
    central_panel(s)
    notification_panel(s)
    scratchpad.init_term(s)
end)
