local set = vim.o
set.autoindent = true
set.tabstop = 4
set.laststatus = 3
set.shiftwidth = 4
set.mouse = "a"
set.backspace = "indent,eol,start"
set.cursorline = true
set.ttyfast = true
set.number = true
set.incsearch = true
set.clipboard = "unnamedplus"
set.splitkeep = "screen"
set.lazyredraw = true
set.termguicolors = true

set.foldcolumn = "1" -- '0' is not bad
set.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
set.foldlevelstart = 99
set.foldenable = true

vim.g.smartindent = 1
set.conceallevel = 2
-- Neovim config for the links to show properly
set.conceallevel = 2
set.concealcursor = "nc"

vim.g.mapleader = " "
vim.g.maplocalleader = ","
set.fillchars =
	[[horiz:━,horizup:┻,horizdown:┳,vert:┃,vertleft:┫,vertright:┣,verthoriz:╋,foldopen:▼,foldclose:>,fold: ]]

vim.cmd([[colorscheme kanagawa-dragon]])

-- Highlight trailing whitespace

vim.cmd [[
hi EoLSpace ctermbg=red guibg=red
match EoLSpace /\s\+$/
]]

