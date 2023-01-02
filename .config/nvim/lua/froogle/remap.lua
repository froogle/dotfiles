vim.g.mapleader = " "
-- puts us into the file browser
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- When in visual mode, use J and K to move the highlighted
-- lines up or down. Also indents if you move in or out of a 
-- block of code
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keep the cursor in place and attach the line below to the end of this one
vim.keymap.set("n", "J", "mzJ`z")

-- Keep the cursor in the middle of the screen when half page jumping
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Keep the search terms in the middle of the screen when moving up and down
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
-- Preserves the paste buffer when pasteing over something else
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
-- Yank to system clipboard instead
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Delete to void register
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Stop Q doing anything
vim.keymap.set("n", "Q", "<nop>")

-- Ctrl f to switch projects
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Quick fix navigation
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- replace current word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- make current file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })




