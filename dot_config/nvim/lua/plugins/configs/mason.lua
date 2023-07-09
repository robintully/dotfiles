
local config = function()

	local servers_list = {
		-- LSP
        "python-lsp-server",
        "lua-language-server",
        "html-lsp",
        "json-lsp",
        "pyright",
        "gopls",

		-- DAP
        "go-debug-adapter",
		"shellcheck",

		-- linters
        "gospel",

		-- formatters
		"jq"
	}


	-- maosn settings
	require("mason").setup({
		max_concurrent_installers = 5,
        ui = {
            border = "single",
            width = 0.7,
            height = 0.7,
            icons = {
                package_installed = " ",
                package_pending = " ",
                package_uninstalled = " "
            },
        keymaps = {
            toggle_package_expand = "<Tab>",
            install_package = "i",
            update_package = "u",
            check_package_version = "c",
            update_all_packages = "U",
            check_outdated_packages = "C",
            uninstall_package = "x",
            cancel_installation = "<C-c>",
            apply_language_filter = "<C-f>",
			},
        },
    })

	-- nvim-cmp supports additional completion capabilities, so broadcast that to servers
	local capabilities = vim.lsp.protocol.make_client_capabilities()
	capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)
	capabilities["textDocument"]["foldingRange"] = {
		dynamicRegistration = false,
		lineFoldingOnly = true,
	}


	-- Settings for LSP servers
	local runtime_path = vim.split(package.path, ";")
	table.insert(runtime_path, "lua/?.lua")
	table.insert(runtime_path, "lua/?/init.lua")
	local servers = {
		lua_ls = {
			Lua = {
				telemetry = { enable = false },
				runtime = {
					path = runtime_path,
				},
				diagnostics = {
					globals = { "vim", "NONE", "bufnr", "MapLSP" },
				},
				workspace = {
					checkThirdParty = false,
					library = {
						vim.fn.expand("$VIMRUNTIME/lua"),
						vim.fn.stdpath("config") .. "/lua",
					},
				},
				completion = {
					callSnippet = "Replace",
				},
			},
		},
	}


	-- on_attach function to be added to each server
	local on_attach = function(client, bufnr)
		MapLSP(bufnr)

		if client.name == "ruff_lsp" then
			client.server_capabilities.hoverProvider = false
		end

		local vt_basic = {
			spacing = 10,
			severity = { min = vim.diagnostic.severity.INFO },
		}
		vim.diagnostic.config({ virtual_text = vt_basic })

	end

	-- Setup LSP servers
    require('lspconfig.ui.windows').default_options.border = 'single'
	require("mason-lspconfig").setup()
	require("mason-lspconfig").setup_handlers({
		function(server_name)
			require("lspconfig")[server_name].setup({
				on_attach = on_attach,
				capabilities = capabilities,
				settings = servers[server_name],
			})
		end,
	})

	-- Setup null-ls
	require("mason-null-ls").setup({
        -- List of LSP servers, Linters and Formatters to be installed
		ensure_installed = servers_list,
        -- Automatically install LSP servers, Linters and Formatters in background
		automatic_installation = true,
		handlers = {},
	})

	local null_ls = require("null-ls")
	null_ls.setup({
		on_attach = function(client, bufnr)
			-- Custom command to use null-ls as the formatter.
			local format_cmd = function(input)
				vim.lsp.buf.format({
					id = client.id,
					timeout_ms = 5000,
					async = input.bang,
				})
			end

			local bufcmd = vim.api.nvim_buf_create_user_command
			bufcmd(bufnr, "NullFormat", format_cmd, {
				bang = true,
				range = true,
			})
		end,
		sources = {
			-- Anything not supported by mason.
			null_ls.builtins.completion.spell,
			null_ls.builtins.code_actions.refactoring,
		},
	})

	-- setup lsp diagnostic signs
	vim.fn.sign_define("DiagnosticSignError", { texthl = "DiagnosticSignError", text = "", numhl = "" })
	vim.fn.sign_define("DiagnosticSignWarn", { texthl = "DiagnosticSignWarn", text = "", numhl = "" })
	vim.fn.sign_define("DiagnosticSignHint", { texthl = "DiagnosticSignHint", text = "", numhl = "" })
	vim.fn.sign_define("DiagnosticSignInfo", { texthl = "DiagnosticSignInfo", text = "", numhl = "" })

end

return config
