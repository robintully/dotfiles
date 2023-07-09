
local config = function()
	local colors = require("colors")
	local bufferline = require("bufferline")

	bufferline.setup({
		options = {
			mode = "tabs",
			numbers = "none",
			close_command = "bdelete! %d",
			right_mouse_command = false,
			middle_mouse_command = false,
			buffer_close_icon = "󰅖",
			modified_icon = "󰷉",
			close_icon = "󱎘",
			max_name_lenght = 20,
			max_prefix_lenght = 10,
			tab_size = 20,
			diagnostics = false,
			color_icons = true,
            show_buffer_icons = true,
            show_buffer_close_icons = true,
            show_close_icon = true,
            show_tab_indicators = false,
            show_duplicate_prefix = false,
            persist_buffer_sort = true,
			separator_style = "|",
			always_show_bufferline = true,
			custom_filter = function (buf)
				-- do not show tabs for `help` pages
				return not vim.bo[buf].filetype == "help"
			end,
			hover = {
				enabled = true,
				delay = 200,
				reveal = {'close'}
			},
			offsets = {
				{
					filetype = "neo-tree",
					text = "File Explorer",
					text_align = "center",
					highlight = "Operator",
					separator = false
				}
			},
			indicator = {
				icon = "",
				style = "none"
			},
			groups = {
				items = {
					{
						name = "Docs",
						highlight = { underline = true, sp = colors.orange },
						require('bufferline.groups').builtin.pinned:with({ icon = "" }),
						icon = function ()
							local get_icon = require("nvim-web-devicons").get_icon("", "txt", { default = true })
							print(get_icon)
						end
					}
				}
			},
		},
		highlights = {
			fill = {
				fg = colors.foreground,
				bg = colors.background_hard
			},
			background = {
				fg = colors.foreground,
				bg = colors.background_hard
			},
			-- right
			tab = {
				fg = colors.foreground_soft_alt,
				bg = colors.background_hard
			},
			-- right
			tab_selected = {
				fg = colors.yellow,
				bg = colors.background_hard
			},
			-- right
			tab_close = {
				fg = colors.foreground_soft_alt,
				bg = colors.background_hard
			},
			close_button = {
				fg = colors.red,
				bg = colors.background
			},
			close_button_visible = {
				fg = colors.red,
				bg = colors.background
			},
			close_button_selected = {
				fg = colors.foreground_soft_alt,
				bg = colors.background
			},
			buffer_selected = {
				fg = colors.foreground_hard,
				bg = colors.background,
				bold = true,
				italic = true
			},
            buffer_visible = {
                fg = colors.gray,
                bg = colors.background_hard,
            },
			modified_selected = {
				fg = colors.foreground_soft,
				bg = colors.background,
			},
			modified_visible = {
				fg = colors.foreground_soft_alt,
				bg = colors.background
			},
			indicator_selected = {
				fg = colors.red,
				bg = colors.background
			},
			separator = {
				fg = colors.red,
				bg = colors.background_hard
			},
            separator_selected = {
				fg = colors.red,
				bg = colors.background_hard
            },
            separator_visible = {
				fg = colors.red,
				bg = colors.background_hard
            },
		}
	})
end

return config

