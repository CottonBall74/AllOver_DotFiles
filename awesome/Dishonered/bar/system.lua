-- objects
local awful = require("awful")
local wibox = require("wibox")

local beautiful = require("beautiful")
local gears = require("gears")


-- local batteryarc_widget = require("batteryarc_widget.batteryarc")


-- network
net = wibox.widget{
    text = "  N/A ",
    widget = wibox.widget.textbox,

    font = "jetbrains mono 13"
}
net = wibox.container.background(
    net,
    beautiful.container_bg,
    function(cr, width, height)
        gears.shape.rounded_rect(cr, width, 100, 0)
    end
)
net = wibox.container.margin(net, 6, 3, 6, 6)



-- volume
sound = wibox.widget{
    text = "  N/A ",
    widget = wibox.widget.textbox,

    font = "jetbrains mono 13"
}
sound = wibox.container.background(
    sound,
    beautiful.container_bg,
    function(cr, width, height)
        gears.shape.rounded_rect(cr, width, 100, 0)
    end
)
sound = wibox.container.margin(sound, 3, 0, 6, 6)

-- backlight
backlight = wibox.widget{
    text = "  N/A ",
    widget = wibox.widget.textbox,

    font = "jetbrains mono 13"
}
backlight = wibox.container.background(
    backlight,
    beautiful.container_bg,
    function(cr, width, height)
        gears.shape.rounded_rect(cr, width, 100, 0)
    end
)
backlight = wibox.container.margin(backlight, 0, 3, 6, 6)



-- battery

battery = wibox.widget{
    text = "  N/A ",
    widget = wibox.widget.textbox,

    font = "jetbrains mono 13"
}
battery = wibox.container.background(
    battery,
    beautiful.container_bg,
    function(cr, width, height)
        gears.shape.rounded_rect(cr, width, 100, 0)
    end
)
battery = wibox.container.margin(battery, 3, 6, 6, 6)
