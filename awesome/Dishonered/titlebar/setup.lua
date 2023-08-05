awful = require("awful")
wibox = require("wibox")
beautiful = require("beautiful")




-- {{{ Titlebars
-- Add a titlebar if titlebars_enabled is set to true in the rules.
client.connect_signal("request::titlebars", function(c)
    -- buttons for the titlebar
    local buttons = {
        awful.button({ }, 1, function()
            c:activate { context = "titlebar", action = "mouse_move"  }
        end),
        awful.button({ }, 3, function()
            c:activate { context = "titlebar", action = "mouse_resize"}
        end),
    }


    appIcon = awful.titlebar.widget.iconwidget(c)
    appIcon = wibox.container.margin(appIcon, 3, 3, -1, 6)

    closeButton = awful.titlebar.widget.closebutton(c)
    closeButton = wibox.container.margin(closeButton, 3, 3, 2, 6)

    maximizeButton = awful.titlebar.widget.maximizedbutton(c)
    maximizeButton = wibox.container.margin(maximizeButton, 6, 6, 2, 6)

    minimizeButton = awful.titlebar.widget.minimizebutton(c)
    minimizeButton = wibox.container.margin(minimizeButton, 3, 6, 2, 6)

    awful.titlebar(c, { size = 22, position = "top", bg_normal = beautiful.border_normal, bg_focus = beautiful.border_normal }).widget = {
        { -- Left
            appIcon,
            buttons = buttons,
            layout  = wibox.layout.fixed.horizontal
        },
        {
            buttons = buttons,
            layout  = wibox.layout.flex.horizontal,
        },
        { -- Right
            minimizeButton,
            maximizeButton,
            closeButton,

            layout = wibox.layout.fixed.horizontal()
        },
        layout = wibox.layout.align.horizontal
    }
end)
-- }}}
