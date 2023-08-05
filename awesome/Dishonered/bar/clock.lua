local awful = require("awful")
local wibox = require("wibox")
local beautiful = require("beautiful")

local gears = require("gears")



-- clock widget
myClock = wibox.widget{
    format = ' %H:%M %a ',
    widget = wibox.widget.textclock,

    font = "jetbrains mono 13",
}
myClock = wibox.container.background(
    myClock,
    beautiful.container_bg,
    function(cr, width, height)
        gears.shape.rounded_rect(cr, width, 100, 0)
    end
)
myClock = wibox.container.margin(myClock, 6, 3, 6, 6)
