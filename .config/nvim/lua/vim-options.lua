-- Opciones
vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim.undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "120"

-- remap
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>fv", ":Ex<CR>", {})

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- copia sin reemplazar el buffer
vim.keymap.set("x", "<leader>p", "\"_dP")

-- copiar a clipbord
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

vim.keymap.set("n", "<leader>wh", "<C-w>h", { desc = 'Mover hacia la ventaja de la derecha'})
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<leader>wj", "<C-w>j", { desc = 'Mover hacia la ventaja de abajo'})
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<leader>wk", "<C-w>k", { desc = 'Mover hacia la ventaja de arriba'})
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<leader>wl", "<C-w>l", { desc = 'Mover hacia la ventaja de la izquierda'})
vim.keymap.set("n", "<C-l>", "<C-w>l")
