
local config = function()
local cols = require("colors")
local lualine = require("lualine")

local colors = {
  bg       = cols.background_hard,
  fg       = cols.foreground,
  fg_soft  = cols.foreground_soft,
  fg_soft_alt = cols.background_soft_alt,
  yellow   = cols.yellow,
  cyan     = cols.cyan,
  darkblue = cols.blue,
  green    = cols.green,
  orange   = cols.orange,
  violet   = cols.pink,
  magenta  = cols.purple,
  blue     = cols.blue,
  red      = cols.red,
  gray     = cols.gray
}

local conditions = {
  buffer_not_empty = function()
    return vim.fn.empty(vim.fn.expand('%:t')) ~= 1
  end,
  hide_in_width = function()
    return vim.fn.winwidth(0) > 80
  end,
  check_git_workspace = function()
    local filepath = vim.fn.expand('%:p:h')
    local gitdir = vim.fn.finddir('.git', filepath .. ';')
    return gitdir and #gitdir > 0 and #gitdir < #filepath
  end,
}

local config = {
  options = {
    component_separators = "",
    section_separators = "",
    disabled_filetypes = {
        statusline = { "alpha", "neo-tree", "aerial", },
        winbar = { "alpha", "neo-tree", "aerial", },
    },
    theme = {
      normal = { c = { fg = colors.fg, bg = colors.bg } },
      inactive = { c = { fg = colors.fg, bg = colors.bg } },
    },
  },
  sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_y = {},
    lualine_z = {},
    lualine_c = {},
    lualine_x = {},
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_y = {},
    lualine_z = {},
    lualine_c = {},
    lualine_x = {},
  },
  winbar = {
	lualine_c = {
		{
			"aerial",
			depth = 3,
			on_click = function()
				vim.cmd("AerialToggle")
			end,
		},
	},
  },
  inactive_winbar = {
	lualine_c = {
		{
			"filetype",
			colored = false,
			icon_only = true,
			color = { fg = colors.fg_soft_alt },
		},
		{
			"filename",
			color = { fg = colors.fg_soft_alt },
			symbols = {
				modified = "",
				readonly = "(RO)",
			},
			padding = { left = 1, right = 1 },
		},
	},
  },
    extensions = {
        "aerial",
        "man",
        "neo-tree",
        "toggleterm",
    },
}

local function ins_left(component)
  table.insert(config.sections.lualine_c, component)
end

local function ins_right(component)
  table.insert(config.sections.lualine_x, component)
end

ins_left {
  function()
    return '▊'
  end,
  color = function()
    local mode_color = {
      n = colors.blue,
      i = colors.green,
      v = colors.orange,
      [''] = colors.blue,
      V = colors.orange,
      c = colors.magenta,
      no = colors.red,
      s = colors.orange,
      S = colors.orange,
      [''] = colors.orange,
      ic = colors.yellow,
      R = colors.violet,
      Rv = colors.violet,
      cv = colors.red,
      ce = colors.red,
      r = colors.cyan,
      rm = colors.cyan,
      ['r?'] = colors.cyan,
      ['!'] = colors.red,
      t = colors.red,
    }
    return { fg = mode_color[vim.fn.mode()] }
  end,
  padding = { left = 0, right = 1 },
}

ins_left {
  function()
    return ''
  end,
  color = { fg = colors.cyan },
  padding = { right = 1 },
}

ins_left {
  'filename',
  cond = conditions.buffer_not_empty,
  color = { fg = colors.yellow, gui = 'bold' },
}

ins_left {
    'filesize',
    cond = conditions.buffer_not_empty,
    color = { fg = colors.gray, gui = 'bold' }
}

ins_left {
    'location',
    -- current / total
    fmt = function(str, _)
        local loc = vim.split(str, ":")
        return string.format("%d/%d", loc[1], vim.api.nvim_buf_line_count(0))
    end,
    color = { fg = colors.gray, gui = 'bold' },
    on_click = function()
        vim.ui.input({
            prompt = "Go to line: ",
            default = vim.fn.line("."),
        }, function(input)
            if input ~= nil and input ~= "" then
                vim.cmd("normal! " .. input .. "G")
            end
        end)
    end,
}

-- ins_left { 'progress', color = { fg = colors.fg, gui = 'bold' } }

ins_left {
  'diagnostics',
  sources = { 'nvim_diagnostic' },
  symbols = { error = ' ', warn = ' ', info = ' ' },
  on_click = function()
      vim.cmd("TroubleToggle")
  end,
  diagnostics_color = {
    color_error = { fg = colors.red },
    color_warn = { fg = colors.yellow },
    color_info = { fg = colors.cyan },
  },
}

ins_left {
  function()
    return '%='
  end,
}

ins_right {
  function()
    local msg = 'No Active LSP'
    local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
    local clients = vim.lsp.get_active_clients()
    if next(clients) == nil then
      return msg
    end
    for _, client in ipairs(clients) do
      local filetypes = client.config.filetypes
      if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
        return client.name
      end
    end
    return msg
  end,
  icon = '',
  on_click = function ()
      vim.cmd("LspInfo")
  end,
  color = { fg = colors.violet, gui = 'bold' },
}

ins_right {
  'o:encoding',
  fmt = string.upper,
  cond = conditions.hide_in_width,
  color = { fg = colors.orange, gui = 'bold' },
  on_click = function()
    vim.ui.input({
        prompt = "Enter new filetype: ",
        default = vim.bo.filetype,
        completion = "filetype",
    }, function(input)
        if input ~= nil and input ~= "" then
            vim.cmd("set filetype=" .. input)
        end
    end)
   end,
}

ins_right {
  'fileformat',
  fmt = string.upper,
  icons_enabled = false,
  color = { fg = colors.blue, gui = 'bold' },
}

ins_right {
  'branch',
  icon = '',
  color = { fg = colors.violet, gui = 'bold' },
}

ins_right {
  'diff',
  symbols = { added = ' ', modified = '柳 ', removed = ' ' },
  diff_color = {
    added = { fg = colors.green },
    modified = { fg = colors.orange },
    removed = { fg = colors.red },
  },
  cond = conditions.hide_in_width,
      on_click = function()
        require("telescope.builtin").git_status()
  end,

}

ins_right {
  function()
    return '▊'
  end,
  color = function()
    local mode_color = {
      n = colors.cyan,
      i = colors.green,
      v = colors.blue,
      [''] = colors.blue,
      V = colors.orange,
      c = colors.magenta,
      no = colors.red,
      s = colors.orange,
      S = colors.orange,
      [''] = colors.orange,
      ic = colors.yellow,
      R = colors.violet,
      Rv = colors.violet,
      cv = colors.red,
      ce = colors.red,
      r = colors.cyan,
      rm = colors.cyan,
      ['r?'] = colors.cyan,
      ['!'] = colors.red,
      t = colors.red,
    }
    return { fg = mode_color[vim.fn.mode()] }
  end,
  padding = { left = 1 },
}

lualine.setup(config)

end

return config
