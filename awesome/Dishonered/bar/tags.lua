local awful = require("awful")
local wibox = require("wibox")
local beautiful = require("beautiful")

local gears = require("gears")





local fancy_taglist = require("fancy_taglist")

local tags = {
    taglist = require("Dishonered.bar.taglist"),
    tasklist = require("Dishonered.bar.tasklist")
}
taglist_buttons = tags.taglist()
tasklist_buttons = tags.tasklist()


local tagger = "|"

screen.connect_signal("request::desktop_decoration", function(s)
    local names = { " 1 ", " 2 ", " 3 ", " 4 ", " 5 ", " 6 ", " 7 ", " 8 ", " 9 " }
    local l = awful.layout.suit  -- Just to save some typing: use an alias.
    local layouts = {
        l.floating,   -- 1
        l.tile,       -- 2
        l.floating,   -- 3
        l.magnifier,  -- 4
        l.floating,   -- 5
        l.magnifier,  -- 6
        l.tile,       -- 7
        l.tile,       -- 8
        l.tile        -- 9
    }
    awful.tag(names, s, layouts)

    --Tagkist cum tasklist widget
    awful.screen.connect_for_each_screen(function(s)
      local fancy_taglist = require("fancy_taglist")
      mytaglist = fancy_taglist.new({
        screen = s,
        taglist = { buttons = taglist_buttons },
        tasklist = { buttons = tasklist_buttons },
        -- taglist_buttons  = mytagbuttons,
        -- tasklist_buttons = tasklist_buttons,
        filter = awful.widget.taglist.filter.all,
       })
    end)

    mytaglist = wibox.container.background(
        mytaglist,
        beautiful.container_bg,
        function(cr, width, height)
            gears.shape.rounded_rect(cr, width, 100, 0)
        end
    )
    mytaglist = wibox.container.margin(mytaglist, 6, 6, 6, 6)


    beautiful.taglist_bg_focus = beautiful.custom_bg_focus
end)
