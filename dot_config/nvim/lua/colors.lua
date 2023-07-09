
local C = {}

local function set_theme(theme)
    if theme == "kanagawa" then
        local colors = require('kanagawa.colors').setup{}
        local palette = colors.palette
        C.background = palette.SumInk1
        C.background_hard = palette.SumInk0
        C.background_soft = palette.SumInk2
        C.background_soft_alt = palette.SumInk3
        C.foreground = palette.fujiWhite
        C.foreground_hard = palette.fujiWhite
        C.foreground_soft = palette.oldWite
        C.foreground_soft_alt = palette.oldWite
        C.blue = palette.crystalBlue
        C.cyan = palette.lotusBlue1
        C.red = palette.lotusRed2
        C.pink = palette.sakuraPink
        C.purple = palette.oniViolet
        C.green = palette.springGreen
        C.yellow = palette.carpYellow
        C.orange  = palette.surimiOrange
        C.gray = palette.fujiGray
        C.diagnostics = { fg = C.foreground_soft, bg = C.background}
        C.status_icon = { fg = C.cyan, bg = C.background }
		C.HeaderGradient1 = C.cyan
		C.HeaderGradient2 = C.pink
		C.HeaderGradient3 = C.foreground
		vim.api.nvim_set_hl(0, "Visual", { bold = true, italic = true, fg = C.yellow })
    elseif theme == "gruvbox" then
        local palette = require("gruvbox.palette").colors
        C.background = palette.dark0
        C.background_hard = palette.dark0_hard
        C.background_soft = palette.dark2
        C.background_soft_alt = palette.dark1
        C.foreground = palette.light0
        C.foreground_hard = palette.light0_hard
        C.foreground_soft = palette.light3
        C.foreground_soft_alt = palette.light4
        C.blue = palette.neutral_blue
        C.cyan = palette.bright_blue
        C.red = palette.neutral_red
        C.pink = palette.bright_purple
        C.purple = palette.neutral_purple
        C.green = palette.neutral_green
        C.yellow = palette.neutral_yellow
        C.orange = palette.neutral_orange
        C.gray = palette.gray
        C.diagnostics = { fg = C.foreground_soft, bg = C.background}
        C.status_icon = { fg = C.cyan, bg = C.background }
		C.HeaderGradient1 = C.cyan
		C.HeaderGradient2 = C.pink
		C.HeaderGradient3 = C.foreground
		vim.api.nvim_set_hl(0, "Visual", { bold = true, italic = true, fg = C.yellow })
    elseif theme == "rose-pine" then
        local palette = require("rose-pine.palette")
        C.background = palette.main.base
        C.background_hard = palette.main.nc
        C.background_soft = palette.main.surface
        C.background_soft_alt = palette.main.overlay
        C.foreground = palette.main.text
        C.foreground_hard = palette.moon.text
        C.foreground_soft = palette.dawn.surface
        C.foreground_soft_alt = palette.overlay
        C.blue = palette.pine
        C.cyan = palette.foam
        C.red = palette.love
        C.pink = palette.iris
        C.purple = palette.iris
        C.green = palette.foam
        C.yellow = palette.gold
        C.orange = palette.gold
        C.gray = palette.highlight_low
        C.diagnostics = { fg = C.foreground_soft, bg = C.background}
        C.status_icon = { fg = C.cyan, bg = C.background }
		C.HeaderGradient1 = C.cyan
		C.HeaderGradient2 = C.pink
		C.HeaderGradient3 = C.foreground
		vim.api.nvim_set_hl(0, "Visual", { bold = true, italic = true, fg = C.yellow })
    elseif theme == "nord" then
        local palette = require("nord.named_colors")
        C.background = palette.black
        C.background_hard = palette.black
        C.background_soft = palette.dark_gray
        C.background_soft_alt = palette.gray
        C.foreground = palette.darker_white
        C.foreground_hard = palette.white
        C.foreground_soft = palette.darkest_white
        C.blue = palette.blue
        C.cyan = palette.off_blue
        C.red = palette.red
        C.pink = "#FF9999"
        C.purple = palette.purple
        C.green = palette.green
        C.yellow = palette.yellow
        C.orange = palette.orange
        C.gray = palette.light_gray_bright
        C.diagnostics = { fg = C.foreground_soft, bg = C.background}
        C.status_icon = { fg = C.cyan, bg = C.background }
		C.HeaderGradient1 = C.cyan
		C.HeaderGradient2 = C.pink
		C.HeaderGradient3 = C.foreground
		vim.api.nvim_set_hl(0, "Visual", { bold = true, italic = true, fg = C.yellow })
    elseif theme == "catppuccin-mocha" then
        local palette = require("catppuccin.palettes.mocha")
        C.background = palette.base
        C.background_hard = palette.mantle
        C.background_soft = palette.surface0
        C.background_soft_alt = palette.surface1
        C.foreground = palette.text
        C.foreground_hard = palette.text
        C.foreground_soft = palette.subtext1
        C.foreground_soft_alt = palette.subtext0
        C.blue = palette.blue
        C.cyan = palette.sky
        C.red = palette.red
        C.pink = palette.pink
        C.purple = palette.mauve
        C.green = palette.green
        C.yellow = palette.yellow
        C.orange = palette.peach
        C.gray = palette.overlay0
        C.diagnostics = { fg = C.foreground_soft, bg = C.background}
        C.status_icon = { fg = C.cyan, bg = C.background }
		C.HeaderGradient1 = C.cyan
		C.HeaderGradient2 = C.pink
		C.HeaderGradient3 = C.foreground
		vim.api.nvim_set_hl(0, "Visual", { bold = true, italic = true, fg = C.yellow })
    elseif theme == "catppuccin-macchiato" then
        local palette = require("catppuccin.palettes.macchiato")
        C.background = palette.base
        C.background_hard = palette.mantle
        C.background_soft = palette.surface0
        C.background_soft_alt = palette.surface1
        C.foreground = palette.text
        C.foreground_hard = palette.text
        C.foreground_soft = palette.subtext1
        C.foreground_soft_alt = palette.subtext0
        C.blue = palette.blue
        C.cyan = palette.sky
        C.red = palette.red
        C.pink = palette.pink
        C.purple = palette.mauve
        C.green = palette.green
        C.yellow = palette.yellow
        C.orange = palette.peach
        C.gray = palette.overlay0
        C.diagnostics = { fg = C.foreground_soft, bg = C.background}
        C.status_icon = { fg = C.cyan, bg = C.background }
		C.HeaderGradient1 = C.cyan
		C.HeaderGradient2 = C.pink
		C.HeaderGradient3 = C.foreground
		vim.api.nvim_set_hl(0, "Visual", { bold = true, italic = true, fg = C.yellow })
    elseif theme == "catppuccin-frappe" then
        local palette = require("catppuccin.palettes.frappe")
        C.background = palette.base
        C.background_hard = palette.mantle
        C.background_soft = palette.surface0
        C.background_soft_alt = palette.surface1
        C.foreground = palette.text
        C.foreground_hard = palette.text
        C.foreground_soft = palette.subtext1
        C.foreground_soft_alt = palette.subtext0
        C.blue = palette.blue
        C.cyan = palette.sky
        C.red = palette.red
        C.pink = palette.pink
        C.purple = palette.mauve
        C.green = palette.green
        C.yellow = palette.yellow
        C.orange = palette.peach
        C.gray = palette.overlay0
        C.diagnostics = { fg = C.foreground_soft, bg = C.background}
        C.status_icon = { fg = C.cyan, bg = C.background }
		C.HeaderGradient1 = C.cyan
		C.HeaderGradient2 = C.pink
		C.HeaderGradient3 = C.foreground
		vim.api.nvim_set_hl(0, "Visual", { bold = true, italic = true, fg = C.yellow })
    elseif theme == "catppuccin-latte" then
        local palette = require("catppuccin.palettes.latte")
        C.background = palette.base
        C.background_hard = palette.mantle
        C.background_soft = palette.surface0
        C.background_soft_alt = palette.surface1
        C.foreground = palette.text
        C.foreground_hard = palette.text
        C.foreground_soft = palette.subtext1
        C.foreground_soft_alt = palette.subtext0
        C.blue = palette.blue
        C.cyan = palette.sky
        C.red = palette.red
        C.pink = palette.pink
        C.purple = palette.mauve
        C.green = palette.green
        C.yellow = palette.yellow
        C.orange = palette.peach
        C.gray = palette.overlay0
        C.diagnostics = { fg = C.foreground_soft, bg = C.background}
        C.status_icon = { fg = C.cyan, bg = C.background }
		C.HeaderGradient1 = C.cyan
		C.HeaderGradient2 = C.pink
		C.HeaderGradient3 = C.foreground
		vim.api.nvim_set_hl(0, "Visual", { bold = true, italic = true, fg = C.yellow })
    elseif theme == "dracula" then
        local palette = require("dracula.palette")
        C.background = palette.bg
        C.background_hard = "#242632"
        C.background_soft = "#2D2F3C"
        C.background_soft_alt = "#333544"
        C.foreground = palette.fg
        C.foreground_hard = "#FBFBF5"
        C.foreground_soft = "#F4F4EC"
        C.foreground_soft_alt = "#EDEDE5"
        C.blue = "#6B80C0"
        C.cyan = palette.cyan
        C.red = palette.red
        C.pink = palette.pink
        C.purple = palette.purple
        C.green = palette.green
        C.yellow = palette.yellow
        C.orange = palette.peach
        C.gray = palette.white
        C.diagnostics = { fg = C.foreground_soft, bg = C.background}
        C.status_icon = { fg = C.cyan, bg = C.background }
		C.HeaderGradient1 = C.cyan
		C.HeaderGradient2 = C.pink
		C.HeaderGradient3 = C.foreground
		vim.api.nvim_set_hl(0, "Visual", { bold = true, italic = true, fg = C.yellow })
    end
end
    local current_theme = vim.api.nvim_exec("color", true)
    set_theme(current_theme)

return C

