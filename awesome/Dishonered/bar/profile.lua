local awful = require("awful")
local wibox = require("wibox")

local beautiful = require("beautiful")
local gears = require("gears")

local naughty = require("naughty")



-- button


-- profile decoration
profile = wibox.widget{
    text = "  ",
    widget = wibox.widget.textbox,

    font = "jetbrains mono 13",
    buttons = profileButton
}
profile = wibox.container.background(
    profile,
    beautiful.container_bg,
    function(cr, width, height)
        gears.shape.rounded_rect(cr, width, 100, 0)
    end
)
profile = wibox.container.margin(profile, 3, 6, 6, 6)
