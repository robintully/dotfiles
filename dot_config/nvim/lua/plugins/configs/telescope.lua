
local config = function()

    require('telescope').setup{
        defaults = {
            sorting_strategy = "ascending",
            selection_stratergy = "closest",
            scroll_strategy = "limit",
            layout_strategy = "bottom_pane",
            winblend = 0,
            wrap_results = true,
            selection_caret = " ",
            initial_mode = "normal",
            border = true,
            path_display = { truncate = 3 },
            borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
            preview = {
                treesitter = true,
                hide_on_startup = false,
            },

            layout_config = {
                bottom_pane = {
                    height = 20,
                    preview_cutoff = 120,
                    prompt_position = "bottom"
                },
            },

            mappings = {
                n = {
                    ["q"] = require('telescope.actions').close,
                    ["<c-f>"] = require('telescope.actions').close,
                    ["a"] = require('telescope.actions').toggle_all,
                    ["hsp"] = require('telescope.actions').file_split,
                    ["vsp"] = require('telescope.actions').file_vsplit,
                    ["d"] = require('telescope.actions').delete_buffer,
                    ["g"] = require('telescope.actions').move_to_top,
                    ["m"] = require('telescope.actions').move_to_middle,
                    ["G"] = require('telescope.actions').move_to_bottom,
                    ["K"] = require('telescope.actions').preview_scrolling_up,
                    ["J"] = require('telescope.actions').preview_scrolling_down,
                    ["n"] = require('telescope.actions').results_scrolling_down,
                    ["N"] = require('telescope.actions').results_scrolling_up,
                    ["<cr>"] = require('telescope.actions').file_tab,
                    ["<tab>"] = require('telescope.actions').toggle_selection,
                },
                i = {}
            }
        }
    }
end

return config

