local awful = require("awful")
local wibox = require("wibox")
local beautiful = require("beautiful")

local gears = require("gears")




-- clock widget
require("Dishonered.bar.clock")
-- system widgets
require("Dishonered.bar.system")
-- profile widget
require("Dishonered.bar.profile")

--other widgets
local brightness_widget = require("Dishonered.bar.brightness")
local volume_widget = require('volume-widget.volume')
local batteryarc_widget = require("batteryarc-widget.batteryarc")


-- seperators
linee = wibox.widget{
    text = "|",
    widget = wibox.widget.textbox,

    font = "jetbrains mono 18"
}
linee = wibox.container.margin(linee, 6, 6, 6, 6)
space = wibox.widget{
    text = "",
    widget = wibox.widget.textbox,

    font = "jetbrains mono 13"
}
space = wibox.container.margin(space, 3, 3, 6, 6)



screen.connect_signal("request::desktop_decoration", function(s)
    -- widgets
    local taglist = require("Dishonered.bar.tags")

    local batteryarc_widget = require("batteryarc-widget.batteryarc")


    -- seperator
    line = wibox.widget{
        text = "|",
        widget = wibox.widget.textbox,

        font = "jetbrains mono 18"
    }
    -- sapce = wibox.widget{
    --     text = " ",
    --     widget = wibox.widget.textbox,

    --     font = "jetbrains mono 18"
    -- }

    -- current layout
    currentLayout = awful.widget.layoutbox(s)
    currentLayout:buttons(gears.table.join(
                            awful.button({ }, 1, function () awful.layout.inc( 1) end),
                            awful.button({ }, 3, function () awful.layout.inc(-1) end),
                            awful.button({ }, 4, function () awful.layout.inc( 1) end),
                            awful.button({ }, 5, function () awful.layout.inc(-1) end)))
    currentLayout = wibox.container.margin(currentLayout, 8, 6, 9, 9)




    -- TheBar
    theBar = awful.wibar({
        position = "top",

        screen = s,
        height = 45,

        bg = beautiful.bg_normal.."ee",
        fg = beautiful.fg_normal,
    })

    -- TheBar setup
    theBar:setup{
        layout = wibox.layout.align.horizontal,
        { -- widgets
            layout = wibox.layout.fixed.horizontal,

            currentLayout,
            line,

            mytaglist,
        },
        spr,
        {
            layout = wibox.layout.fixed.horizontal,
           
            
            -- sound,
            --backlight,

            -- net,
            -- battery,
            brightness_widget(),
            space,
            volume_widget{widget_type = 'arc'},
            -- linee,
            space,
            batteryarc_widget({
                show_current_level = true,
            }), 
            space,

            line,
            wibox.widget.systray (revers),

            line,
            myClock,

            profile,
        }
    }
end)


awful.keyboard.append_global_keybindings({
    -- Show/Hide Wibox
     awful.key({ modkey, }, "`", function ()
             for s in screen do
                 theBar.visible = not theBar.visible
            end
         end,
         {description = "toggle wibox", group = "awesome"})
})
