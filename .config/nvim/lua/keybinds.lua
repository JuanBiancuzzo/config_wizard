vim.keymap.set("n", "<leader>fv", ":Ex<CR>", {})

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- pegar sin reemplazar el buffer
vim.keymap.set("x", "<leader>p", "\"_dP")

-- copiar a clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")
vim.keymap.set("v", "<leader>Y", "\"+Y")

vim.keymap.set("i", "<C-c>", "<Esc>")

-- reemplazar texto
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- ventanas
vim.keymap.set("n", "<leader>wq", "<C-w>q", { desc = 'Cerrar ventana'})
vim.keymap.set("n", "<leader>wv", "<C-w>v", { desc = 'Split ventana vertical'})
vim.keymap.set("n", "<leader>ws", "<C-w>s", { desc = 'Split ventana horizontal'})
vim.keymap.set("n", "<leader>ww", ":w<CR>", { desc = 'Guarda la ventana activa'})

vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = 'Mover hacia la ventana de la derecha'})
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = 'Mover hacia la ventana de abajo'})
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = 'Mover hacia la ventana de arriba'})
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = 'Mover hacia la ventana de la izquierda'})
