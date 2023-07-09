
local config = function()
local colors = require("colors")
    require("toggleterm").setup{
      size = 25,
      -- open_mapping = [[<c-\>]],
      hide_numbers = false,
      autochdir = false,
      shade_terminals = false,
      start_in_insert = true,
      insert_mappings = true,
      terminal_mappings = true,
      persist_size = true,
      persist_mode = true,
      direction = 'float',
      close_on_exit = true,
      auto_scroll = true,
	  highlights = {
		Normal = {
		  guibg = colors.background,
		},
		NormalFloat = {
		  link = 'Normal'
		},
		FloatBorder = {
		  guifg = colors.blue,
		},
	  },
      float_opts = {
        border = 'single',
        width = 160,
        height = 35,
      }
    }
end

return config
