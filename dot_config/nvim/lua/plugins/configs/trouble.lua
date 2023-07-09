
local config = function ()
	local trouble = require("trouble")

	trouble.setup({
		position = "bottom",
		height = 15,
		width = 50,
		icons = true,
		mode = "document_diagnostics", -- "workspace_diagnostics", "document_diagnostics", "quickfix", "lsp_references", "loclist"
		fold_open = "",
		fold_closed = "",
		group = true,
		padding = true,
		action_keys = {
			close = "q",
			cancel = "<esc>",
			refresh = "r",
			jump = {"<cr>", "<tab>"},
			open_split = { "<c-x>" },
			open_vsplit = { "<c-v>" },
			open_tab = { "<c-t>" },
			jump_close = {"o"}, -- jump to the diagnostic and close the list
			toggle_mode = "m",
			toggle_preview = "P",
			hover = "K",
			preview = "p",
			close_folds = {"zM", "zm"},
			open_folds = {"zR", "zr"},
			toggle_fold = {"zA", "za"},
			previous = "k",
			next = "j"
		},
		indent_lines = true,
		auto_open = false,
		auto_close = true,
		auto_preview = true,
		auto_fold = false,
		auto_jump = {"lsp_definitions"},
		-- signs = {
		-- 	error = "",
		-- 	warning = "",
		-- 	hint = "",
		-- 	information = "",
		-- 	other = " "
		-- },
		use_diagnostic_signs = true
	})
end

return config
