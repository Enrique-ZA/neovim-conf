vim.g.mapleader = " "
vim.keymap.set("n", "<leader>dd", vim.cmd.Ex) -- explorer
vim.keymap.set({"n","v"}, "<C-s>", vim.cmd.w) -- save
vim.api.nvim_set_keymap('i', '<C-s>', '<Esc>:w<CR>', {noremap = true}) -- save and escape
vim.keymap.set("i", "<S-a><S-a>", "<C-o>0") -- home
vim.api.nvim_set_keymap('n', '<C-x>', ':wq<CR>', {noremap = true}) -- save and exit
vim.api.nvim_set_keymap('i', '<C-x>', '<Esc>:wq<CR>', {noremap = true}) --save and exit
vim.api.nvim_set_keymap('v', '<C-x>', ':wq<CR>', {noremap = true}) --save and exit
vim.api.nvim_set_keymap('v', '<C-d>', 'y:call system("wl-copy", getreg(\"\"))<CR>', {noremap = true, silent = true})
vim.keymap.set("i", "<S-f><S-f>", "<C-o>$") -- end
vim.keymap.set("n", "<S-a><S-a>", "<Home>") -- home
vim.keymap.set("n", "<S-f><S-f>", "<End>") -- end
vim.keymap.set("n", "<C-z>", "u") -- undo
vim.keymap.set("i", "<C-z>", "<C-o>u") -- undo
vim.api.nvim_set_keymap('v', '<c-z>', 'u', {noremap = true}) -- undo
vim.keymap.set("i", "<C-y>", "<C-o><C-r><End>") -- redo
vim.keymap.set({"n","v"}, "h", "<F17>") -- remap h to nothing for now
vim.keymap.set({"n","v"}, "j", "h") -- remap left
vim.keymap.set({"n","v"}, "l", "j") -- remap down
vim.keymap.set({"n","v"}, ";", "l") -- remap right
vim.api.nvim_set_keymap("i", "<C-c>", "<Esc>:w<CR>", {noremap = true}) -- esc
vim.api.nvim_set_keymap('n', '<C-a>', 'ggVG', {noremap = true})
vim.keymap.set("i", "<C-a>", "<C-o>g<C-o>g<C-o>V<C-o>G") -- select all insert
vim.keymap.set("i", "<PageUp>", "") --
vim.keymap.set("i", "<PageDown>", "") --
vim.keymap.set({"n","i"}, "<Up>", "") --
vim.keymap.set({"n","i"}, "<Down>", "") --
vim.keymap.set({"n","i"}, "<Left>", "") -- 
vim.keymap.set({"n","i"}, "<Right>", "") --
vim.keymap.set("i", "<A-j>", "<C-o><Left>") --
vim.keymap.set("i", "<A-k>", "<C-o><Up>") --
vim.keymap.set("i", "<A-l>", "<C-o><Down>") --
vim.keymap.set("i", "<A-;>", "<C-o><Right>") --
vim.keymap.set("n", "<S-p><S-p>", "<C-^>") -- go to previous file
vim.api.nvim_set_keymap('n', '<A-l>', ':set paste<CR>m`o<Esc>j``:set nopaste<CR>', {noremap = true, silent = true}) -- insert new line normal mode
vim.api.nvim_set_keymap('v', 'K', ':m \'<-2<CR>gv=gv', {noremap = true}) -- selected up in visual
vim.api.nvim_set_keymap('v', 'L', ':m \'>+1<CR>gv=gv', {noremap = true}) -- selected down in visual
