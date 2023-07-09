
local config = function()
    local highlight = require('nvim-highlight-colors')

    highlight.setup = {
        render = "background",
        enable_named_colors = true,
        enable_tailwind = true
    }
    highlight.turnOn()
end

return config
