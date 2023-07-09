
local footers = {
	txts = {
		["tip_1"] = { "[[ To exit Neovim, just shut down your computer ]]" },
		["tip_2"] = { "[[ A watch that costs $30 and a watch that costs $300 show the same time (Steve Jobs) ]]"}
	}
}


-- source: https://github.com/Allaman/nvim/blob/main/lua/core/plugins/alpha/headers.lua
return setmetatable(footers, {
  __index = function(tb, key)
    if key == "random" then
      -- Choose a random sub-table inside headers (imgs | banners)
      local ks = vim.tbl_keys(tb)
      local sub = tb[ks[math.random(#ks)]]

      -- Obtain keys and return a random banner
      local keys = vim.tbl_keys(sub)
      return sub[keys[math.random(1, #keys)]]
    else
      -- Return the desired banner
      return tb[key]
    end
  end,
})
