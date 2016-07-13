local theme                               = { wallpapers = {} }

local themes_dir                          = os.getenv("HOME") .. "/.config/awesome/themes/ingvij"

for file in io.popen('ls ' .. themes_dir .. "/walls"):lines() do
  table.insert(theme.wallpapers, themes_dir .. "/walls/" .. file)
end

theme.font_family                   = "Iosevka"
theme.font_size                     = "8"
theme.icon_font                     = "FontAwesome"
theme.font                          = theme.font_family .. " " .. theme.font_size
theme.full_black                    = "#181818"
theme.black                         = "#282828"
theme.dark_gray                     = "#383838"
theme.gray                          = "#585858"
theme.light_gray                    = "#B8B8B8"
theme.white                         = "#D8D8D8"
theme.full_white                    = "#F8F8F8"
theme.red                           = "#AB4642"
theme.green                         = "#A1B56C"
theme.yellow                        = "#F7CA88"
theme.teal                          = "#86C1B9"
theme.blue                          = "#7CAFC2"
theme.purple                        = "#BA8BAF"

theme.bg_normal                     = theme.full_black
theme.fg_normal                     = theme.light_gray

theme.bg_focus                      = theme.black
theme.fg_focus                      = theme.white

theme.bg_urgent                     = theme.red
theme.fg_urgent                     = theme.full_black

theme.useless_gap                   = 1
theme.border_width                  = 1
theme.border_normal                 = theme.dark_gray
theme.border_focus                  = theme.purple
theme.border_marked                 = theme.blue

theme.taglist_fg_focus              = theme.blue

theme.tasklist_bg_focus             = theme.dark_gray
theme.tasklist_fg_focus             = theme.purple

theme.menu_height                   = "16"
theme.menu_width                    = "140"

theme.layout_txt_tile               = "[t]"
theme.layout_txt_tileleft           = "[l]"
theme.layout_txt_tilebottom         = "[b]"
theme.layout_txt_tiletop            = "[tt]"
theme.layout_txt_fairv              = "[fv]"
theme.layout_txt_fairh              = "[fh]"
theme.layout_txt_spiral             = "[s]"
theme.layout_txt_dwindle            = "[d]"
theme.layout_txt_max                = "[m]"
theme.layout_txt_fullscreen         = "[F]"
theme.layout_txt_magnifier          = "[M]"
theme.layout_txt_floating           = "[|]"

theme.submenu_icon                  = themes_dir .. "/icons/submenu.png"
theme.taglist_squares_sel           = themes_dir .. "/icons/square_sel.png"
theme.taglist_squares_unsel         = themes_dir .. "/icons/square_unsel.png"

theme.tasklist_disable_icon         = true
theme.tasklist_floating             = ""
theme.tasklist_maximized_horizontal = ""
theme.tasklist_maximized_vertical   = ""

-- lain related
theme.layout_txt_termfair           = "[trf]"
theme.layout_txt_uselessfair        = "[ufv]"
theme.layout_txt_uselessfairh       = "[ufh]"
theme.layout_txt_uselessdwindle     = "[usd]"
theme.layout_txt_uselesstile        = "[ust]"
theme.useless_gap_width             = 10

return theme
