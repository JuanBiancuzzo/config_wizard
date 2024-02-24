vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>fv", ":Ex<CR>", {})

-- ventanas
vim.keymap.set("n", "<leader>wq", "<C-w>q", { desc = 'Cerrar ventana'})
vim.keymap.set("n", "<leader>wv", "<C-w>v", { desc = 'Split ventana vertical'})
vim.keymap.set("n", "<leader>ws", "<C-w>s", { desc = 'Split ventana horizontal'})
vim.keymap.set("n", "<leader>ww", ":w<CR>", { desc = 'Guarda la ventana activa'})

vim.keymap.set("n", "<leader>wh", "<C-w>h", { desc = 'Mover hacia la ventaja de la derecha'})
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<leader>wj", "<C-w>j", { desc = 'Mover hacia la ventaja de abajo'})
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<leader>wk", "<C-w>k", { desc = 'Mover hacia la ventaja de arriba'})
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<leader>wl", "<C-w>l", { desc = 'Mover hacia la ventaja de la izquierda'})
vim.keymap.set("n", "<C-l>", "<C-w>l")
