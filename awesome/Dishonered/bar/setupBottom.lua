local awful = require("awful")
local wibox = require("wibox")

local beautiful = require("beautiful")
local gears = require("gears")



screen.connect_signal("request::desktop_decoration", function(s)


    -- widgets
    local batteryarc_widget = require("batteryarc-widget.batteryarc")
    local spotify_widget = require("spotify-widget.spotify")
    local brightness_widget = require("Dishonered.bar.brightness")
    local volume_widget = require('volume-widget.volume')


    -- seperators
    line = wibox.widget{
        text = "|",
        widget = wibox.widget.textbox,

        font = "jetbrains mono 18"
    }
    line = wibox.container.margin(line, 6, 6, 6, 6)
    space = wibox.widget{
        text = "",
        widget = wibox.widget.textbox,

        font = "jetbrains mono 13"
    }
    space = wibox.container.margin(space, 3, 3, 6, 6)


    bottomBar = awful.wibar({
        position = "top",

        screen = s,
        height = 40,

        bg = beautiful.bg_normal.."ee",
        fg = beautiful.fg_normal,
    })

    bottomBar:setup{
        layout = wibox.layout.align.horizontal,
        { -- left widgets
            layout = wibox.layout.fixed.horizontal,

            space,
            spotify_widget(),
        },
        spr,
        { -- right widgets
        layout = wibox.layout.fixed.horizontal,
        

        brightness_widget(),
        space,
        space,
        volume_widget{widget_type = 'arc'},
        line,
        -- wibox.widget.textbox(" ", 'jetbrains mono bold 10'),
        batteryarc_widget({
            show_current_level = true,
            arc_thickness = 5
        }), 
        space,
    }
}

end)

awful.keyboard.append_global_keybindings({
    -- Show/Hide Wibox Bottom
    awful.key({ modkey, }, "`", function()
        for s in screen do
            bottomBar.visible = not bottomBar.visible
        end
    end,
              {description = "toggle wibox bottom", group = "awesome"})
})
