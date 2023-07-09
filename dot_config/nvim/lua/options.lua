
-- disable some in-built features which are unnecessary
vim.g.loaded_tar				= 0
vim.g.loaded_zip				= 0
vim.g.loaded_gzip				= 0
vim.g.loaded_netrw				= 0
vim.g.loaded_vimball			= 0
vim.g.loaded_matchit			= 0
vim.g.loaded_logiPat			= 0
vim.g.loaded_rrhelper			= 0
vim.g.loaded_tarPlugin			= 0
vim.g.loaded_zipPlugin			= 0
vim.g.loaded_getscript			= 0
vim.g.loaded_matchparen			= 0
vim.g.loaded_netrwPlugin		= 0
vim.g.loaded_2html_plugin		= 0
vim.g.loaded_netrwSettings		= 0
vim.g.loaded_vimballPlugin		= 0
vim.g.loaded_getscriptPlugin	= 0
vim.g.loaded_netrwFileHandlers  = 0

-- global
vim.opt.backup			= false
vim.opt.shell			= "/bin/fish" 				-- default shell
vim.opt.clipboard 		= "unnamedplus" 			-- clipboard support
vim.opt.hlsearch		= false						-- disable search highlighting
vim.opt.completeopt		= { "menu", "menuone", "noselect" }
vim.opt.colorcolumn		= "130"						-- google it, i'm to lazy
vim.opt.incsearch		= true						-- incremental search
vim.opt.mouse			= "n"						-- enable mouse support onlt in normal mode
vim.opt.undofile		= true						-- undo your changes even after closing file
vim.opt.undolevels		= 250						-- how many undo steps nvim will remember
vim.opt.smartindent 	= true						-- smart indent filetypes
vim.opt.confirm			= true						-- confirm exit if file unsaved
vim.opt.cmdheight		= 0							-- set cmdline height to 0 ny default
vim.opt.splitright		= true						-- split windows in right direction by default
vim.opt.synmaxcol		= 150						-- `:help synmaxcol`
vim.opt.timeout			= true						-- timeout for mappings
vim.opt.timeoutlen		= 300						-- timeout valuetimeout value
vim.opt.pumblend		= 10						-- transparency of popup menu
vim.opt.winblend		= 10						-- transparency of floating windows
-- vim.opt.autochdir		= true						-- automatically change working directory
vim.opt.swapfile		= false						-- do not use swap file

-- -- ui
vim.opt.termguicolors	= true						-- enable gui colors
vim.opt.syntax			= "on"						-- enable syntax highlighting
vim.opt.pumheight		= 13						-- how many columns can be in popup menu
--
-- -- tabs
vim.opt.tabstop 		= 4
vim.opt.shiftwidth 		= 4
vim.opt.softtabstop		= 4
vim.opt.smarttab		= true						-- smarttab. depends on shiftwidth
--
-- -- numbers
vim.opt.number			= true						-- show numbers
vim.opt.numberwidth 	= 1							-- width of number column
vim.opt.relativenumber 	= true						-- enable relative numbers

-- cursor / scrolling
vim.opt.scrolloff 		= 30						-- sets visible lines above/below cursor
vim.opt.cursorline 		= true						-- show the line the cursor is on

-- other
vim.g.loaded_netrw       = 1						-- disable netrw explorer
vim.g.loaded_netrwPlugin = 1						-- same
vim.opt.background		 = "dark"

vim.cmd([[ colorscheme kanagawa ]])					-- load colorscheme
