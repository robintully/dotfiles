
local config = function()
	local colors = require("colors")
    require('notify').setup{
        fps = 60,
        icons = {
          DEBUG = "",
          ERROR = "",
          INFO = "",
          TRACE = "",
          WARN = ""
        },
		background_colour = colors.foreground_hard,
        level = 2,
        minimum_width = 40,
        render = "default",
        stages = "fade",
        timeout = 3500,
        top_down = true
    }
    vim.notify = require('notify')
end

return config
