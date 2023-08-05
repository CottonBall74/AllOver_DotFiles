---------------------------
-- Default awesome theme --
---------------------------

local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

local gfs = require("gears.filesystem")
local themes_path = gfs.get_themes_dir()

local pathToAwesome = "~/.config/awesome/"

local theme = {}

-- theme.wallpaper = "~/Pictures/Wallpapers/Games/AssassinsCreed/London_Factory.jpg"


-- Icons
theme.menuIcon = pathToAwesome .. "Icons/AwesomeMenu/MainMenuIcon.png"
theme.powerIcon = pathToAwesome .. "Icons/AwesomeMenu/PowerMenuIcon.png"
theme.fanIcon = pathToAwesome .. "Icons/AwesomeMenu/FanMenuIcon.png"

-- Submenu Icons
--[[
theme.keyboardIcon = pathToAwesome .. "Icons/Submenu/HotkeysIcon.png"
theme.bookIcon = pathToAwesome .. "Icons/Submenu/ManualIcon.png"
theme.wrenchIcon = pathToAwesome .. "Icons/Submenu/ConfigIcon.png"
theme.restartIcon = pathToAwesome .. "Icons/Submenu/RestartIcon.png"
theme.powerOffIcon = pathToAwesome .. "Icons/Submenu/PowerOffIcon.png"
]]--


theme.font          = "jetbrains mono 11.5"

-- colors
theme.bg_normal     = "#151515"
theme.bg_focus      = "#222222"
theme.bg_urgent     = "#7FA6C1"
theme.bg_minimize   = "#222222"

theme.fg_normal     = "#DEDEDE"
theme.fg_focus      = "#DEDEDE"
theme.fg_urgent     = "#ffffff"
theme.fg_minimize   = "#ffffff"

theme.useless_gap   = dpi(5)
theme.border_width  = dpi(5)
theme.snapper_gap   = dpi(5)
theme.border_normal = "#151515"
theme.border_focus  = "#151515"
theme.border_marked = "#91231c"

-- custom colors
theme.custom_bg_focus    = "#e56b1a"
-- theme.custom_bg_focus    = "#7FA6C1"
theme.custom_fg_focus = theme.bg_normal.."ee"
theme.container_bg  = "#282828"

theme.hotkeys_border_color = theme.container_bg
theme.hotkeys_modifiers_fg = theme.custom_bg_focus
theme.snap_bg = theme.fg_normal


-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- taglist_[bg|fg]_[focus|urgent|occupied|empty|volatile]
-- tasklist_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- prompt_[fg|bg|fg_cursor|bg_cursor|font]
-- hotkeys_[bg|fg|border_width|border_color|shape|opacity|modifiers_fg|label_bg|label_fg|group_margin|font|description_font]
-- Example:
--theme.taglist_bg_focus = "#ff0000"

--[[ Generate taglist squares:
local taglist_square_size = dpi(4)
theme.taglist_squares_sel = theme_assets.taglist_squares_sel(
    taglist_square_size, theme.fg_normal
)
theme.taglist_squares_unsel = theme_assets.taglist_squares_unsel(
    taglist_square_size, theme.fg_normal
) ]]--

-- Variables set for theming notifications:
-- notification_font
-- notification_[bg|fg]
-- notification_[width|height|margin]
-- notification_[border_color|border_width|shape|opacity]

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = pathToAwesome .. "Icons/AwesomeMenu/SubMenuIcon.png"
theme.menu_height = dpi(15)
theme.menu_width  = dpi(100)

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
-- theme.bg_widget = "#cc0000"

-- Define the image to load
theme.titlebar_close_button_normal = pathToAwesome.."Icons/notFocused_icon.png"
theme.titlebar_close_button_focus = pathToAwesome.."Icons/close_icon.png"

theme.titlebar_minimize_button_normal  = pathToAwesome.."Icons/notFocused_icon.png"
theme.titlebar_minimize_button_focus = pathToAwesome.."Icons/minimize_icon.png"

theme.titlebar_maximized_button_normal_inactive =  pathToAwesome.."Icons/notFocused_icon.png"
theme.titlebar_maximized_button_focus_inactive  = pathToAwesome.."Icons/maximize_icon.png"
theme.titlebar_maximized_button_normal_active = pathToAwesome.."Icons/notFocused_icon.png"
theme.titlebar_maximized_button_focus_active  = pathToAwesome.."Icons/maximize_icon.png"


-- You can use your own layout icons like this:
theme.layout_floating  = pathToAwesome.."Icons/Layouts/floating.png"
theme.layout_magnifier = pathToAwesome.."Icons/Layouts/magnifier.png"
theme.layout_tile = pathToAwesome.."Icons/Layouts/tiled.png"

-- Generate Awesome icon:
theme.awesome_icon = theme_assets.awesome_icon(
    theme.menu_height, theme.bg_focus, theme.fg_focus
)

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = nil


return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
