local awful    = require("awful")
local helpers  = require("lain.helpers")
local wibox    = require("wibox")

local function factory(args)
    local lpass    = { status = false, widget = wibox.widget.textbox() }
    local args     = args or {}
    local timeout  = args.timeout or 300
    local settings = args.settings or function() end

    lpass.widget:buttons(
      awful.util.table.join(
        awful.button({}, 1, lpass.update),
        awful.button({}, 3, lpass.update),
        awful.button({}, 4, lpass.update),
        awful.button({}, 5, lpass.update)
        )
      )

    function lpass.update()
        lpass.status = os.execute('lpass status')
        status = lpass.status
        widget = lpass.widget

        settings()
    end

    helpers.newtimer("lpass", timeout, lpass.update)

    return lpass
end

return factory
