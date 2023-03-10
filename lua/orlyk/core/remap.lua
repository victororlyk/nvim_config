
vim.g.mapleader = " "

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "<leader>y", [["+y]])
vim.keymap.set("n", "<c-u>", "<c-u>zz")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- split window
vim.keymap.set("n", "<leader>sv", "<C-w>v")
vim.keymap.set("n", "<leader>sh", "<C-w>s")
vim.keymap.set("n", "<leader>se", "<C-w>=")
vim.keymap.set("n", "<leader>sx", ":close<CR>")

-- tabs
-- vim.keymap.set("n", "<leader>to", ":tabnew<CR>")
-- vim.keymap.set("n", "<leader>tx", ":tabclose<CR>")
-- vim.keymap.set("n", "<leader>tn", ":tabn<CR>")
-- vim.keymap.set("n", "<leader>tp", ":tabp<CR>")

-- maximizer
vim.keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

vim.keymap.set("n", "<leader>pv", ":NvimTreeToggle<CR>") -- toggle file explorer

-- trouble vim
vim.keymap.set("n", "<leader>ef", ":TroubleToggle document_diagnostics<CR>")
vim.keymap.set("n", "<leader>ew", ":TroubleToggle workspace_diagnostics<CR>")
vim.keymap.set("n", "<leader>ld", ":TroubleToggle lsp_definitions<CR>")

-- vimspector debugger
vim.keymap.set('n', "Db", ":call vimspector#ToggleBreakpoint()<cr>")
vim.keymap.set('n', "Dw", ":call vimspector#AddWatch()<cr>")
vim.keymap.set('n', "De", ":call vimspector#Evaluate()<cr>")

vim.keymap.set("n", "<leader>8", ":TagbarToggle<CR>")

-- git
vim.keymap.set("n", "<leader>gs", vim.cmd.Git);

--buffers
vim.keymap.set("n", "<leader>bn", ":bn<CR>");
vim.keymap.set("n", "<leader>bp", ":bp<CR>");



