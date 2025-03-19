require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- gitsigns
map("n", "<leader>ph", "<cmd>Gitsigns preview_hunk<CR>", { desc = "GitSigns Preview git hunk" })
map("n", "<leader>gb", "<cmd>Gitsigns blame_line<CR>", { desc = "GitSigns Blame git line" })
map("n", "<leader>]h", "<cmd>Gitsigns next_hunk<CR>", { desc = "GitSigns Next git hunk" })
map("n", "<leader>[h", "<cmd>Gitsigns prev_hunk<CR>", { desc = "GitSigns Previous git hunk" })
map("n", "<leader>rh", "<cmd>Gitsigns reset_hunk<CR>", { desc = "GitSigns Reset git hunk" })
