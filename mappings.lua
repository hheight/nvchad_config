---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    -- Run tests
    ["<leader>t"] = { "<cmd> TestNearest -strategy=vimux <CR>", "Test nearest" },
    ["<leader>T"] = { "<cmd> TestFile -strategy=vimux <CR>", "Test file" },
    ["<leader>l"] = { "<cmd> TestLast -strategy=vimux <CR>", "Test last" },
  },
  v = {
    [">"] = { ">gv", "indent"},
  },
}

M.telescope = {
  plugin = true,

  n = {
    -- find
    ["<leader>fs"] = { "<cmd> Telescope grep_string <CR>", "Find word" },
  },
}

-- more keybinds!

return M
