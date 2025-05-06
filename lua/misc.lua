-- set leader key ke spasi
vim.g.mapleader = ","

-- set wrap => false
vim.opt.wrap = false

-- set clipboard options
vim.opt.clipboard = "unnamedplus"

-- set ukuran tab menjadi 4 spasi
vim.o.tabstop = 2
vim.o.expandtab = true
vim.o.softtabstop = 2
vim.o.shiftwidth = 2

-- set powershell sebagai shell default
vim.o.shell = "powershell.exe"

vim.o.shellxquote = ""
vim.o.shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command "
vim.o.shellquote = ""
vim.o.shellpipe = "| Out-File -Encoding UTF8 %s"
vim.o.shellredir = "| Out-File -Encoding UTF8 %s"

-- set relative line number
vim.wo.relativenumber = false

-- line break
vim.opt.breakindent = true
vim.opt.formatoptions:remove("t")
vim.opt.linebreak = true

-- incremental search
vim.opt.incsearch = true

-- terminal color
vim.opt.termguicolors = true

-- tampilin minimal 10 line terbawah pas scroll, kaya padding
vim.opt.scrolloff = 10

vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")
vim.opt.updatetime = 50

-- movements windows
vim.keymap.set("n", "<leader><S-Tab>", "<C-w>h", {})
vim.keymap.set("n", "<leader><Tab>", "<C-w>l", {})
vim.keymap.set("n", "<A-j>", "<C-w>j", {})
vim.keymap.set("n", "<A-k>", "<C-w>k", {})
vim.keymap.set("n", "<leader>c", ":exit <CR>", {})
vim.keymap.set("n", "<leader>C", ":bd <CR>", {})

-- resize windows
vim.keymap.set("n", "ww", "<C-w>=", {})
vim.keymap.set("n", "wh", ":vertical resize +5 <CR>", {})
vim.keymap.set("n", "wl", ":vertical resize -5 <CR>", {})
vim.keymap.set("n", "<A-J>", ":res +5 <CR>", {})
vim.keymap.set("n", "<A-K>", ":res -5 <CR>", {})

-- keymap untuk indent
vim.keymap.set("v", "<", "<gv", {})
vim.keymap.set("v", ">", ">gv", {})

-- escape terminal mode
vim.keymap.set("t", "<leader><escape>", vim.api.nvim_replace_termcodes("<C-\\><C-N>", true, true, true))

-- line number
-- toggle lineNumber
vim.keymap.set("n", "<leader>n", "<cmd> set nu! <CR>")
-- toggle relativelinenumber
vim.keymap.set("n", "<leader>rn", "<cmd> set rnu! <CR>")

-- disable Q
vim.keymap.set("n", "Q", "<nop>")

-- biar text gak terlalu mepet ke bawah pas scroll
-- vim.keymap.set("n", "<CR><CR>", "<C-d>zz")
vim.keymap.set("n", "<CR><CR>", "zz")

-- biar text gak terlalu mepet ke atas pas scroll
-- vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- vim.keymap.set("n", "n", "nzzzv")
-- vim.keymap.set("n", "N", "Nzzzv")
-- vim.keymap.set("n", "J", "mzJ`z")

-- redo
vim.keymap.set("n", "<A-u>", "<C-R>")

-- save file
vim.keymap.set("n", "<A-s>", ":w<CR>")
vim.keymap.set("i", "<A-s>", "<ESC>:w<CR>")

-- select all
vim.keymap.set("n", "<C-a>", "<ESC>ggVG")

-- duplicate line
vim.keymap.set("n", "<A-d>", "yyp")

-- tab
vim.keymap.set("n", "<A-T>", ":tabe <CR>")
vim.keymap.set("n", "<A-v>", ":vsp <CR>")
vim.keymap.set("n", "<leader><A-h>", ":sp <CR>")

-- buffers
-- vim.keymap.set("n", "<space><space>", ":sp")
vim.keymap.set("", "<leader>nt", ":tabnew <CR>")
-- vim.keymap.set("", "<leader>Q", ":qa! <CR>")
vim.keymap.set("", "<Tab><Tab>", "<C-~>")
-- vim.keymap.set("", "<Tab>", "gT")
-- vim.keymap.set("", "<S-Tab>", "gt")

-- movements
vim.keymap.set("n", "<A-l>", "e")
vim.keymap.set("n", "<A-h>", "b")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("i", "<A-l>", "<Right>")
vim.keymap.set("i", "<A-h>", "<Left>")
vim.keymap.set("i", "<A-k>", "<Up>")
vim.keymap.set("i", "<A-j>", "<Down>")
vim.keymap.set("i", "<A-BS>", "<C-w>")

vim.keymap.set("i", "<A-L>", "<S-Right>")
vim.keymap.set("i", "<A-H>", "<S-Left>")

vim.keymap.set("n", "<C-j>", ":m .+1<CR>==")
vim.keymap.set("n", "<C-k>", ":m .-2<CR>==")
vim.keymap.set("i", "<C-j>", "<Esc>:m .+1<CR>==gi")
vim.keymap.set("i", "<C-k>", "<Esc>:m .-2<CR>==gi")
vim.keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<C-k>", ":m '<-2<CR>gv=")

vim.keymap.set({ "n", "v" }, "<leader>d", '"_d')

vim.keymap.set('v', "K", "{")
vim.keymap.set('v', "J", "}")

-- scroll
vim.keymap.set("n", "J", "<C-D>")
vim.keymap.set("n", "K", "<C-U>")
vim.keymap.set("n", "<A-L>", "5zl")
vim.keymap.set("n", "<A-H>", "5zh")
