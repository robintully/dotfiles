
local custom_hlgroups = function ()
	local colors = require("colors")

    vim.api.nvim_set_hl(0, "NeoTreeFileName", { link = "Identifier" })

	vim.api.nvim_set_hl(0, "Headline1", { fg = colors.foreground_soft_alt, bg = colors.gray})
	vim.api.nvim_set_hl(0, "Headline2", { fg = colors.foreground_soft, bg = colors.gray})
	vim.api.nvim_set_hl(0, "Headline3", { fg = colors.foreground, bg = colors.gray})
	vim.api.nvim_set_hl(0, "Headline4", { fg = colors.foreground_hard, bg = colors.gray})

end

return custom_hlgroups
