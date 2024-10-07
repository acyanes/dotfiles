vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness


-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>")
keymap.set("i", "jj", "<ESC>:update<CR>")

-- move blocks of code visual mode
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- delete line without copying to register
keymap.set("n", "<leader>dd", '"_dd')

-- delete word without copying to register
keymap.set("n", "<leader>dw", '"_dw')

--delete single character without copying into register
keymap.set("n", "x", '"_x')

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

-- plugin keymaps

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- neo-tree
keymap.set("n", "<leader>e", ":Neotree toggle<CR>")