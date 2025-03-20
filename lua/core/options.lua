vim.wo.number = true -- show line numbers
vim.o.relativenumber = true -- show relative line numbers
vim.o.clipboard = 'unnamedplus' -- sync clipboard between os and nvim
vim.o.wrap = false
vim.o.linebreak = true -- don't split words
-- vim.o.mouse = 'a' -- enable mouse mode
vim.o.autoindent = true -- compy indent from current line when starting new one
vim.o.ignorecase = true -- case insensitive searching UNLESS \C or capital in search
vim.o.smartcase = true -- smart case (?? don't know what this is)
vim.o.shiftwidth = 4 -- number of spaces for autoindentation
vim.o.tabstop = 4 -- number of spaces for tab keypress
vim.o.softtabstop = 4 -- number of spaces that tab counts for while performing editing operations
vim.o.expandtab = true -- convert tabs to spaces

-- options not in video
vim.o.breakindent = true -- Enable break indent
vim.o.undofile = true -- Save undo history
vim.wo.signcolumn = 'yes' -- Keep signcolumn on by default
vim.o.updatetime = 250 -- Decrease update time
vim.o.timeoutlen = 300 -- time to wait for a mapped sequence to complete (in milliseconds)
vim.o.backup = false -- creates a backup file
vim.o.writebackup = false -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
vim.o.completeopt = 'menuone,noselect' -- Set completeopt to have a better completion experience
vim.opt.termguicolors = true -- set termguicolors to enable highlight groups
vim.o.whichwrap = 'bs<>[]hl' -- which "horizontal" keys are allowed to travel to prev/next line
vim.o.scrolloff = 4 -- minimal number of screen lines to keep above and below the cursor
vim.o.sidescrolloff = 8 -- minimal number of screen columns either side of cursor if wrap is `false`
vim.o.splitbelow = true -- force all horizontal splits to go below current window
vim.o.splitright = true -- force all vertical splits to go to the right of current window
vim.o.swapfile = false -- creates a swapfile
vim.o.smartindent = true -- make indenting smarter again
-- vim.o.showmode = false -- we don't need to see things like -- INSERT -- anymore
vim.o.showtabline = 2 -- always show tabs
vim.o.backspace = 'indent,eol,start' -- allow backspace on
vim.o.pumheight = 10 -- pop up menu height
vim.o.conceallevel = 0 -- so that `` is visible in markdown files
vim.o.fileencoding = 'utf-8' -- the encoding written to a file
vim.o.cmdheight = 1 -- more space in the neovim command line for displaying messages
vim.opt.shortmess:append 'c' -- don't give |ins-completion-menu| messages
-- vim.opt.iskeyword:append '-' -- hyphenated words recognized by searches
-- vim.opt.formatoptions:remove { 'c', 'r', 'o' } -- don't insert the current comment leader automatically for auto-wrapping comments using 'textwidth', hitting <Enter> in insert mode, or hitting 'o' or 'O' in normal mode.
vim.opt.runtimepath:remove '/usr/share/vim/vimfiles' -- separate vim plugins from neovim in case vim still in use
