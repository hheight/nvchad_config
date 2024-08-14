require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", "<leader>t", "<cmd> TestNearest -strategy=vimux <CR>", { desc = "Test nearest" })
map("n", "<leader>T", "<cmd> TestFile -strategy=vimux <CR>", { desc = "Test file" })
map("n", "<leader>l", "<cmd> TestLast -strategy=vimux <CR>", { desc = "Test last" })

map("n", "<C-h>", "<cmd> NvimTmuxNavigateLeft <CR>", { desc = "Window left" })
map("n", "<C-l>", "<cmd> NvimTmuxNavigateRight <CR>", { desc = "Window right" })
map("n", "<C-j>", "<cmd> NvimTmuxNavigateDown <CR>", { desc = "Window down" })
map("n", "<C-k>", "<cmd> NvimTmuxNavigateUp <CR>", { desc = "Window up" })

map("n", "<leader>fs", "<cmd> Telescope grep_string <CR>", { desc = "Find word" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
