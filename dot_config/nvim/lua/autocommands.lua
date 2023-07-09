local utils = require("utils")
local autocmd = vim.api.nvim_create_autocmd
local augroup = function(name)
  return vim.api.nvim_create_augroup("augroup" .. name, { clear = true })
end


-- Remove all trailing whitespace on entering to `Normal` mode (thanks to: https://github.com/Allaman/nvim/blob/main/lua/core/autocmd.lua)
local TrimWhiteSpaceGrp = augroup("TrimWhiteSpaceGrp")
autocmd("InsertLeave", {
  command = [[:%s/\s\+$//e]],
  group = TrimWhiteSpaceGrp,
})

-- show cursor line only in active window (thanks to: https://github.com/folke/dot/blob/master/nvim/lua/config/autocmds.lua)
autocmd({ "InsertLeave", "WinEnter" }, {
  callback = function()
    local ok, cl = pcall(vim.api.nvim_win_get_var, 0, "auto-cursorline")
    if ok and cl then
      vim.wo.cursorline = true
      vim.api.nvim_win_del_var(0, "auto-cursorline")
    end
  end,
})
autocmd({ "InsertEnter", "WinLeave" }, {
  callback = function()
    local cl = vim.wo.cursorline
    if cl then
      vim.api.nvim_win_set_var(0, "auto-cursorline", cl)
      vim.wo.cursorline = false
    end
  end,
})

-- create directories when needed, when saving a file (thanks to: https://github.com/folke/dot/blob/master/nvim/lua/config/autocmds.lua)
autocmd("BufWritePre", {
  group = augroup("better_backup"),
  callback = function(event)
    local file = vim.loop.fs_realpath(event.match) or event.match
    local backup = vim.fn.fnamemodify(file, ":p:~:h")
    backup = backup:gsub("[/\\]", "%%")
    vim.go.backupext = backup
  end,
})

-- highlight yanked text (thanks to: https://github.com/Jarmos-san/dotfiles/blob/main/dotfiles/.config/nvim/lua/autocmds.lua)
autocmd("TextYankPost", {
  desc = "Highlight the yanked text for a specified time.",
  group = augroup("yank_highlight"),
  callback = function()
    vim.highlight.on_yank({ timeout = 300 }) -- Keep the highlight for 300ms after yanking.
	end,
})

-- open Alpha dashboard when all buffers are removed (thanks to: https://github.com/Jarmos-san/dotfiles/blob/main/dotfiles/.config/nvim/lua/autocmds.lua)
autocmd("User", {
  desc = "Open Alpha dashboard when all buffers are removed",
  group = augroup("open_alpha_on_buffer_removal"),
  pattern = "BDeletePost*",
  callback = function(event)
    local fallback_name = vim.api.nvim_buf_get_name(event.buf)
    local fallback_filetype = vim.api.nvim_buf_get_option(event.buf, "filetype")
    local fallback_on_empty = fallback_name == "" and fallback_filetype == ""

    if fallback_on_empty then
      vim.cmd("Neotree close")
      vim.cmd("Alpha")
      vim.cmd(event.buf .. "bwipeout")
    end
  end,
})

-- close some filtypes simply by pressing 'q' (thanks to: https://github.com/Jarmos-san/dotfiles/blob/main/dotfiles/.config/nvim/lua/autocmds.lua)
autocmd("FileType", {
  desc = "Close some filtypes simply by pressing 'q'",
  group = augroup("close_with_q"),
  pattern = { "help", "man", "notify", "lspinfo", "checkhealth", "startuptime" },
  callback = function(event)
    vim.bo[event.buf].buflisted = false
    vim.keymap.set("n", "q", "<cmd>close!<cr>", { buffer = event.buf, silent = true })
  end,
})

-- opens help in right split (thanks to https://github.com/sho-87)
local help_group = augroup("help_window_right")
autocmd("BufWinEnter", {
	group = help_group,
	pattern = { "*.txt" },
	callback = function()
		if vim.o.filetype == "help" then
			vim.cmd.wincmd("L")
		end
	end,
	desc = "Open help pages in a vertical split",
})

-- Stop newline comment continuation (thanks to https://github.com/sho-87)
autocmd("FileType", { -- Create an autocmd that triggers when the file type is detected
  pattern = "*", -- Set the pattern to match all file types
  callback = function() -- Define the callback function to be executed when the autocmd triggers
    -- Remove formatting options to disable comment continuation
    vim.opt.formatoptions = vim.opt.formatoptions - { "r", "o", "t", "c" }
  end,
  desc = "Disable comment continuation", -- Set the description of the autocmd
})

-- hide statusline and tabline when `Alphs` buffer is opened
-- source: https://github.com/AstroNvim/AstroNvim/blob/main/lua/astronvim/autocmds.lua
if utils.is_available "alpha-nvim" then
  local group_name = augroup("alpha_settings")
  autocmd("User", {
    desc = "Disable status and tablines for alpha",
    group = group_name,
    pattern = "AlphaReady",
    callback = function()
      local prev_showtabline = vim.opt.showtabline
      local prev_status = vim.opt.laststatus
      vim.opt.laststatus = 0
      vim.opt.showtabline = 0
      vim.opt_local.winbar = nil
      autocmd("BufUnload", {
        desc = "Reenable status and tablines for alpha",
        group = group_name,
        pattern = "<buffer>",
        callback = function()
          vim.opt.laststatus = prev_status
          vim.opt.showtabline = prev_showtabline
        end,
      })
    end,
  })
end



-- When entering the command line window, set the 'cmdheight' option to 1
-- When leaving the command line window, set the 'cmdheight' option back to 0
vim.api.nvim_exec([[
augroup fix_cmdheight
    autocmd CmdlineEnter * lua vim.opt.cmdheight = 1
    autocmd CmdlineLeave * lua vim.opt.cmdheight = 0
augroup END
]], false)


