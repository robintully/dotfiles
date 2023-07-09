
local config = function()
    require('kanagawa').setup({
        compile = true,
        undercurl = true,
        commentStyle = { italic = true },
        functionStyle = { bold = true },
        keywordStyle = { italic = true},
        statementStyle = { bold = true },
        typeStyle = {},
        transparent = true,
        dimInactive = false,
        terminalColors = true,
        theme = "wave",
        background = {
            dark = "wave",
            light = "lotus"
        },
    })
end

return config
