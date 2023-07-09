
local config = function()
	local cmp = require("cmp")
	local luasnip = require("luasnip")

	-- If you want insert `(` after select function or method item
	local cmp_autopairs = require('nvim-autopairs.completion.cmp')
	cmp.event:on(
	  'confirm_done',
	  cmp_autopairs.on_confirm_done()
	)

	local kind_icons = {
	  Text = '  ',
	  Method = '  ',
	  Function = '  ',
	  Constructor = '  ',
	  Field = '  ',
	  Variable = '  ',
	  Class = '  ',
	  Interface = '  ',
	  Module = '  ',
	  Property = '  ',
	  Unit = '  ',
	  Value = '  ',
	  Enum = '  ',
	  Keyword = '  ',
	  Snippet = '  ',
	  Color = '  ',
	  File = '  ',
	  Reference = '  ',
	  Folder = '  ',
	  EnumMember = '  ',
	  Constant = '  ',
	  Struct = '  ',
	  Event = '  ',
	  Operator = '  ',
	  TypeParameter = '  ',
	}


	cmp.setup({
		snippet = {
			expand = function(args)
				luasnip.lsp_expand(args.body)
			end
		},

        window = {
            completion = {
                border = nil,
                col_offset = 3,
                scrollbar = true,
            },
            documentation = {
                border = "single",
                max_width = 60,
                max_height = 80
            },
        },

        formatting = {
          format = function(entry, vim_item)
            vim_item.kind = string.format('%s %s', kind_icons[vim_item.kind], vim_item.kind)
            vim_item.menu = ({
              buffer = "[Buffer]",
              nvim_lsp = "[LSP]",
              luasnip = "[LuaSnip]",
              nvim_lua = "[Lua]",
            })[entry.source.name]
            return vim_item
          end
        },

		sources = cmp.config.sources({
			-- disable text hint consisting of regular words (which are not even in the buffer)
			{
				name = "nvim_lsp",
				priority = 10,
				entry_filter = function(entry)
					return require("cmp").lsp.CompletionItemKind.Text ~= entry:get_kind()
				end
			},
			{ name = "luasnip" },
			{ name = "buffer" },
			{ name = "path", priority = 9 },
		}),

		cmp.setup.cmdline({ "/", "?" }, {
			mapping = cmp.mapping.preset.cmdline(),
			sources = {
			  { name = "buffer" }
			}
		}),

		cmp.setup.cmdline({ ":" }, {
			mapping = cmp.mapping.preset.cmdline(),
			sources = {
			  { name = "path" },
			  { name = "cmdline" }
			},
		}),

        filetype = ({ "fish" }), {
            sources = {
				{ name = "luasnip" },
				{ name = "buffer" },
                { name = "fish" },
				{ name = "path" }
            }
        },

		mapping = cmp.mapping.preset.insert({
			["<CR>"] = cmp.mapping.confirm({ select = true }),
			["<Tab>"] = cmp.mapping(function(fallback)
				if cmp.visible() then
					cmp.select_next_item()
				elseif luasnip.expandable() then
					luasnip.expand()
				else
					fallback()
				end
			end, {
				"i",
				"s",
			}),
			["<S-Tab>"] = cmp.mapping(function(fallback)
				if cmp.visible() then
					cmp.select_prev_item()
				else
					fallback()
				end
			end, {
				"i",
				"s",
			}),
		}),
        experimental = {
            ghost_text = true
        },



	})
end


return config
