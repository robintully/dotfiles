
-- Automatically source `options.lua` file when global colorscheme is changed
local uv = vim.loop
local function on_file_changed(event, filename)
  if event ~= "change" or filename ~= "/home/shved/.config/nvim/lua/options.lua" then
    return
  end
  vim.cmd("so /home/shved/.config/nvim/lua/options.lua")
end

local function watch_file()
  local watcher = uv.new_fs_event()
  watcher:start("/home/shved/.config/nvim/lua/options.lua", {}, on_file_changed)
end

watch_file()
