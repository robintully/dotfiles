
-- ##################################################
-- ####			  NEOVIM KEYBINDINGS			 ####
-- ##################################################

-- force exit
vim.keymap.set('n', '<c-q>', ':qa!<CR>', {})

-- focus direction
vim.keymap.set('n', '<A-j>', ':wincmd h<CR>', { silent = true }) -- focus right
vim.keymap.set('n', '<A-k>', ':wincmd l<CR>', { silent = true }) -- focus left
vim.keymap.set('n', '<A-l>', ':wincmd j<CR>', { silent = true }) -- focus bottom
vim.keymap.set('n', '<A-;>', ':wincmd k<CR>', { silent = true }) -- focus top

-- close window
vim.keymap.set('n', '<A-q>', ':close<CR>', { silent = true })

-- tabs focus
vim.keymap.set('n', '<A-]>',   ':tabnext<CR>',		{ silent = true }) -- next tab
vim.keymap.set('n', '<A-[>',   ':tabprevious<CR>',	{ silent = true }) -- next tab


-- ##################################################
-- ####			  	ABBREVIATIONS				 ####
-- ##################################################

-- abbreviations in `Insert` mode
vim.cmd([[
	iabbrev reqiure require
	iabbrev requrie require
	iabbrev requre require
	iabbrev locla local
	iabbrev loacal local
	iabbrev lcoal local
	iabbrev returnr return
	iabbrev cofnig config
]])

-- abbreviations in `CmdLine` mode
vim.cmd([[
	cabbrev W w
	cabbrev WE w
	cabbrev Ws w
	cabbrev WQ wq
	cabbrev Wq wq
	cabbrev wQ wq
	cabbrev Q q
	cabbrev Q! q!
	cabbrev Q1 q!
	cabbrev q1 q!
]])

-- ##################################################
-- ####			  PLUGINS KEYBINDINGS			 ####
-- ##################################################


local opts = { noremap = true, silent = true }

-- Aerial
vim.api.nvim_set_keymap("n", "<A-a>", ":AerialToggle<CR>", opts)

-- ToggleTerm
vim.api.nvim_set_keymap("n", "<A-\\>", ":ToggleTerm<CR>", opts)
vim.api.nvim_set_keymap("t", "<A-\\>", "exit<CR>", opts)

-- Telescope

-- Open telescope and show hidden files
vim.api.nvim_set_keymap('n', '<A-f>', ':lua require"telescope.builtin".find_files({ hidden = true })<CR>', opts)

-- Open telescope and show current opened buffers
vim.api.nvim_set_keymap('n', '<A-b>', ':Telescope buffers<CR>', opts)

-- Nvim Tree keymaps
vim.api.nvim_set_keymap('n', '<A-n>', ':NeoTreeFocusToggle<CR>', opts)

-- Open trouble
--						 d - diagnostics
vim.api.nvim_set_keymap("n", "<A-d>", ":TroubleToggle<CR>", opts )

