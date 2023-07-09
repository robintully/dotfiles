
local plugins = {

    {
        "ellisonleao/gruvbox.nvim",
        config = require("plugins.configs.themes.gruvbox"),
        lazy = true,
        priority = 1000,
    },

    {
        "catppuccin/nvim",
        name = "catppuccin",
        lazy = true,
        priority = 1000,
		build = ":CatppuccinCompile",
        config = require("plugins.configs.themes.catppuccin")
    },

    {
        "shaunsingh/nord.nvim",
        lazy = true,
        priority = 1000,
        config = require("plugins.configs.themes.nord")
    },

    {
        "rose-pine/neovim",
        name = "rose-pine",
        lazy = true,
        priority = 1000,
        config = require("plugins.configs.themes.rose-pine")
    },

    {
        "rebelot/kanagawa.nvim",
        lazy = true,
        priority = 1000,
		build = ":KanagawaCompile",
        config = require("plugins.configs.themes.kanagawa")
    },

    {
		"Mofiqul/dracula.nvim",
		lazy = true
    },


    {
        "nvim-treesitter/nvim-treesitter",
        enabled = true,
        build = function()
            require("nvim-treesitter.install").update({ with_sync = true })
        end,
		event = "BufReadPre",
        config = require("plugins.configs.nvim-treesitter")
    },

	{
        "numToStr/Comment.nvim",
		name = "nvim-comment",
        enabled = true,
		event = "VeryLazy",
        config = function()
			require("Comment").setup()
		end
	},

    {
        "windwp/nvim-autopairs",
        enabled = true,
        event = "InsertEnter",
        config = require("plugins.configs.nvim-autopairs")
    },



	-- #########################################
	-- ####		    AUTOCOMPLETION			####
	-- #########################################

	{
        "hrsh7th/nvim-cmp",
        enabled = true,
        event = "InsertEnter",
        config = require("plugins.configs.nvim-cmp")
	},


		-- dependencies for nvim-cmp
	{
		{ "neovim/nvim-lspconfig", name = "lspconfig" },
		{ "saadparwaiz1/cmp_luasnip", name = "cmp-luasnip" },
		{ "L3MON4D3/LuaSnip", name = "luasnip", build = "make install_jsregexp" },
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-cmdline",
		"hrsh7th/cmp-buffer",
		"mtoohey31/cmp-fish",
		"hrsh7th/cmp-path",
	},


	{
		"williamboman/mason.nvim",
		build = ":MasonUpdate",
	    enabled = true,
		dependencies = {
            { "jose-elias-alvarez/null-ls.nvim", dependencies = "nvim-lua/plenary.nvim" },
			{ "williamboman/mason-lspconfig.nvim", module = "mason" },
			{ "neovim/nvim-lspconfig", name = "lspconfig" },
            "jay-babu/mason-null-ls.nvim", -- linters and formatters support
            "hrsh7th/cmp-nvim-lsp",
		},
		config = require("plugins.configs.mason")
	},

    {
	    "brenoprata10/nvim-highlight-colors",
	    enable = true,
	    event = "VeryLazy",
		config = require("plugins.configs.highlight-colors")
    },


    {
        "goolord/alpha-nvim",
		enabled = true,
        event = { "VimEnter" },
		dependencies = 	"nvim-tree/nvim-web-devicons",
        config = require("plugins.configs.alpha")
    },

	{
		"nvim-tree/nvim-web-devicons",
		config = require("plugins.configs.nvim-web-devicons")
	},

    {
        "rcarriga/nvim-notify",
		enabled = true,
        event = "VimEnter",
        config = require("plugins.configs.nvim-notify")
    },

    {
        "nvim-lualine/lualine.nvim",
        enabled = true,
        dependencies = { "nvim-tree/nvim-web-devicons" },
        event = { "BufReadPost", "BufNewFile" },
        config = require("plugins.configs.lualine")
    },

	{
		"akinsho/bufferline.nvim",
		enabled = true,
		version = "*",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		event = "VimEnter",
		config = require("plugins.configs.bufferline")
	},

    {
        "stevearc/aerial.nvim",
        enabled = true,
        cmd = { "AerialToggle", "AerialOpen", "AerialOpenAll" },
        config = require("plugins.configs.aerial")
    },

    {
        "nvim-neo-tree/neo-tree.nvim",
        enabled = true,
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        },
        event = "VeryLazy",
        config = require("plugins.configs.neo-tree")
    },

    {
        "nvim-telescope/telescope.nvim",
        enabled = true,
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "nvim-telescope/telescope-project.nvim",
            { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
        },
        cmd = "Telescope",
        config = require("plugins.configs.telescope")
    },

    {
	    "akinsho/toggleterm.nvim",
	    event = "VeryLazy",
	    config = require("plugins.configs.toggleterm")
    },

    {
        "lewis6991/gitsigns.nvim",
        enabled = true,
        event = { "BufReadPost, BufNewFile" },
        config = require("plugins.configs.gitsigns")
    },

	{
		"RRethy/nvim-treesitter-endwise"
	},

	{
		"folke/trouble.nvim",
		config = require("plugins.configs.trouble")
	},

	{
        'lukas-reineke/headlines.nvim',
        dependencies = "nvim-treesitter/nvim-treesitter",
		config = require("plugins.configs.headlines")
	},

	{
		"iamcco/markdown-preview.nvim",
		build = function()
			vim.fn["mkdp#util#install"]()
		end
	}
}

return plugins
