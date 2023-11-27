---@type MappingsTable
local M = {}

M.general = {
  n = {
    -- Run tests
    ["<leader>t"] = { "<cmd> TestNearest -strategy=vimux <CR>", "Test nearest" },
    ["<leader>T"] = { "<cmd> TestFile -strategy=vimux <CR>", "Test file" },
    ["<leader>l"] = { "<cmd> TestLast -strategy=vimux <CR>", "Test last" },

    ["<C-h>"] = { "<cmd> NvimTmuxNavigateLeft <CR>", "Window left" },
    ["<C-l>"] = { "<cmd> NvimTmuxNavigateRight <CR>", "Window right" },
    ["<C-j>"] = { "<cmd> NvimTmuxNavigateDown <CR>", "Window down" },
    ["<C-k>"] = { "<cmd> NvimTmuxNavigateUp <CR>", "Window up" },
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
