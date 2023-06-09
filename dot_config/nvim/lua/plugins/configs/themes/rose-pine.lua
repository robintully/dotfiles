
local config = function()
	require("rose-pine").setup({
		dark_variant = "moon",
		bold_vert_split = false,
		dim_nc_background = true,
        disable_background = true,
		disable_italics = true,
		highlight_groups = {
			DiagnosticVirtualTextError = { fg = "#694e4e" },
			DiagnosticVirtualTextWarn = { fg = "#6b5f4d" },
			DiagnosticVirtualTextInfo = { fg = "#454f52" },
			DiagnosticVirtualTextHint = { fg = "#675875" },
			Directory = { fg = "gold" },
			NormalFloat = { bg = "overlay" },
			Pmenu = { bg = "surface" },
			IndentBlanklineChar = { fg = "highlight_low" },
			SignColumn = { guibg = NONE },

			BufferCurrent = { bg = "overlay", fg = "text" },
			BufferCurrentTarget = { bg = "overlay", fg = "love" },
			BufferCurrentSign = { bg = "overlay" },
			BufferCurrentMod = { bg = "overlay" },
			BufferInactive = { bg = "overlay", fg = "text" },
			BufferInactiveTarget = { bg = "overlay", fg = "love" },
			BufferInactiveSign = { bg = "overlay" },
			BufferInactiveMod = { bg = "overlay" },

			Headline1 = { bg = "pine" },
			Headline2 = { bg = "#345663" },
			Dash = { bg = "love" },
			Quote = { bg = "love" },

			LeapLabelPrimary = { fg = "base", bg = "iris" },
			LeapLabelSecondary = { fg = "base", bg = "love" },
			NeoTreeIndentMarker = { link = "IndentBlanklineChar" },

			JupyniumCodeCellSeparator = { bg = "#286983" },
			JupyniumMarkdownCellSeparator = { bg = "#286983" },
			JupyniumMarkdownCellContent = { bg = "overlay" },
			JupyniumMagicCommand = { link = "Keyword" },

			WhichKey = { fg = "love" },
			WhichKeyGroup = { fg = "subtle" },
			WhichKeyFloat = { bg = "overlay" },
			YankyYanked = { bg = "pine" },
			YankyPut = { bg = "#b4637a" }, -- love from rose pine dawn
		},
	})

end

return config
