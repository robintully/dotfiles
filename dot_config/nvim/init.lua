
-- path to install "lazy.nvim" at
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- small snippet to install "lazy.nvim" from within Neovim.
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end

-- update the Neovim runtimepath for "lazy.nvim" to source the plugins.
vim.opt.rtp:prepend(lazypath)

-- map the <Leader> key to <Space>.
vim.g.mapleader = " "


require("lazy").setup("plugins", {
  ui = {
    border = "single",
    icons = {
      cmd = " ",
      config = "",
      event = "",
      ft = " ",
      init = " ",
      import = " ",
      keys = " ",
      lazy = "󰒲 ",
      loaded = "●",
      not_loaded = "○",
      plugin = " ",
      runtime = " ",
      source = " ",
      start = "",
      task = " ",
      list = {
        "●",
        "➜",
        "★",
        "‒"
      }
    }
  },
  lockfile = vim.fn.stdpath("data") .. "/lazy-lock.json", -- store lock file in ~/.local/share/nvim/ instead of ~/.config/nvim/
  install = {
	  missing = true,
  },
  checker = {
    enabled = false, -- automatically check for plugin updates
    concurrency = 1,
    notify = true, -- get a notification when new updates are found
    frequency = 21600, -- check for updates every 6 hour
  },
  change_detection = {
	  enabled = false
  },
  performance = {
	cache = { enabled = true },
    rtp = {
      disabled_plugins = { -- disable certain in-built plugins which are useful af
        "gzip",
        "matchit",
        "matchparen",
        "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
        "rplugin",
        "man",
        "spellfile",
      },
    },
  },
})


-- firstly loading plugins, which required in lazy setup, after that loading this files
require("hlgroups")
require("autocommands")
require("functions")
require("mappings")
require("options")
