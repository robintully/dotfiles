
local config = function()
	vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

	local function open_no_focus(state)
		local node = state.tree:get_node()
		if require("neo-tree.utils").is_expandable(node) then
			state.commands["toggle_node"](state)
		else
			state.commands["open"](state)
			vim.cmd("Neotree reveal")
		end
	end

	require("neo-tree").setup({
		close_if_last_window = true,
		popup_border_style = "single",
		enable_git_status = true,
		enable_modified_markers = true,
		enable_diagnostics = false,
		sort_case_insensitive = true,
		default_component_configs = {
			indent = {
				with_markers = true,
				with_expanders = true,
			},
			modified = {
				symbol = " ",
				highlight = "NeoTreeModified",
			},
			icon = {
				folder_closed = "",
				folder_open = "",
				folder_empty = "",
				folder_empty_open = "",
			},
			git_status = {
				symbols = {
					-- Change type
					added = "",
					deleted = "",
					modified = "",
					renamed = "",
					-- Status type
					untracked = "",
					ignored = "",
					unstaged = "",
					staged = "",
					conflict = "",
				},
			},
			name = {
				highlight = "NeoTreeFileName"
			}
		},
		window = {
			position = "left",
			width = 40,
                mappings = {
                    ["D"] = {
                        "delete",
                        config = {
                            show_path = "relative"
                        }
                    },
                    ["R"] = {
                        "rename",
                        config = {
                            show_path = "relative"
                        }
                    },
                    ["<TAB>"] = {
                        "open_tabnew",
                        config = {
                            show_path = "relative"
                        }
                    },
                }
		},
		source_selector = {
			winbar = false,
		},
		filesystem = {
			bind_to_cwd = true, -- true creates a 2-way binding between vim's cwd and neo-tree's root
			cwd_target = {
				sidebar = "tab", -- match this to however cd is set elsewhere (tab, window, global)
			},
			filtered_items = {
				visible = false, -- when true, they will just be displayed differently than normal items
				hide_dotfiles = false,
				hide_gitignored = false,
			},
			follow_current_file = true,
			hide_by_name = {},
			use_libuv_file_watcher = true, -- This will use the OS level file watchers to detect changes
		},
		buffers = {
			follow_current_file = true,
			group_empty_dirs = false,
		},
		event_handlers = {
			{
				event = "neo_tree_window_after_open",
				handler = function(args)
					if args.position == "left" or args.position == "right" then
						vim.cmd("wincmd =")
					end
				end,
			},
			{
				event = "neo_tree_window_after_close",
				handler = function(args)
					if args.position == "left" or args.position == "right" then
						vim.cmd("wincmd =")
					end
				end,
			},
		},
	})
end

return config


