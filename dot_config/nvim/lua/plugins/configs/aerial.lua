
local config = function()
    require("aerial").setup({
      backends = { "treesitter", "lsp", "markdown", "man" },

      layout = {
        max_width = 1,
        width = nil,
        min_width = 30,

        win_opts = {},
        default_direction = "prefer_right",
        placement = "edge",
        -- Preserve window size equality with (:help CTRL-W_=)
        preserve_equality = false,
      },

	  keymaps = {
		   ["<TAB>"] = "actions.jump",
		   ["<2-LeftMouse>"] = "actions.jump",
		   ["j"] = "actions.next",
		   ["k"] = "actions.prev",
		   ["q"] = "actions.close",
		   ["l"] = "actions.tree_toggle",
		   ["L"] = "actions.tree_open_recursive",
	  },

      attach_mode = "window",
      close_automatic_events = { "unfocus" },

      lazy_load = true,
      disable_max_lines = 10000,
      disable_max_size = 2000000, -- Default 2MB
      filter_kind = false,
      highlight_mode = "full_width",
      highlight_closest = true,
      highlight_on_hover = true,
      close_on_select = true,

      ignore = {
        unlisted_buffers = false,
        filetypes = { "Alpha", "Telescope" },
      },


      show_guides = true,
      guides = {
        mid_item = "├─",
        last_item = "└─",
        nested_top = "│ ",
        whitespace = "  ",
      },

      lsp = {
        diagnostics_trigger_update = true,
        update_when_errors = true,
        update_delay = 300,
        priority = {},
      },

      treesitter = {
        update_delay = 300,
      },

      markdown = {
        update_delay = 300,
      },

      man = {
        update_delay = 300,
      },
    })
end

return config

