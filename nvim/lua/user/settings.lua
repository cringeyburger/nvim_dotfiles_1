local g = vim.g
local o = vim.o

o.termguicolors = true

-- Decrease update time
o.timeoutlen = 500
o.updatetime = 200

-- Number of screen lines to keep above and below the cursor
o.scrolloff = 8

-- Better editor UI
o.number = true
o.numberwidth = 5
o.relativenumber = true
o.signcolumn = "yes:1"
o.cursorline = true

-- Better editing experience and random
-- o.completeopt = { "menuone", "noselect" } ----- for CMP Remember
o.expandtab = true
o.cmdheight = 2
o.fileencoding = "utf-8"
o.hlsearch = true
o.mouse = "a"
o.pumheight = 10
o.showtabline = 2
o.smartindent = true
o.linebreak = true
o.sidescrolloff = 8
o.guifont = "FiraCode Nerd Font Mono:h14"

-- o.smarttab = true
o.cindent = true

-- o.autoindent = true
o.wrap = true
o.textwidth = 310
o.tabstop = 4
o.shiftwidth = 0
o.softtabstop = -1 -- If negative, shiftwidth value is used
o.list = true
o.listchars = "trail:·,nbsp:◇,tab:→ ,extends:▸,precedes:◂"
-- o.listchars = 'eol:¬,space:·,lead: ,trail:·,nbsp:◇,tab:→-,extends:▸,precedes:◂,multispace:···⬝,leadmultispace:│   ,'
-- o.formatoptions = 'qrn1'

-- Makes neovim and host OS clipboard play nicely with each other
o.clipboard = "unnamedplus"

-- Case insensitive searching UNLESS /C or capital in search
o.ignorecase = true
o.smartcase = true

-- Undo and backup options
o.backup = false
o.writebackup = false
o.undofile = true
o.swapfile = false
-- o.backupdir = '/tmp/'
-- o.directory = '/tmp/'
-- o.undodir = '/tmp/'

-- Remember 50 items in commandline history
o.history = 50

-- Better buffer splitting
o.splitright = true
o.splitbelow = true

g.mapleader = " "
g.maplocalleader = " "
