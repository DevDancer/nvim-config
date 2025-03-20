-- set leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- disable the spacebar's default behaviour in Normal and Visual modes
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- for conciseness
local opts = { noremap = true, silent = true }

-- save file with <C-s>
-- vim.keymap.set('n', '<C-s>', '<cmd> w <CR>', opts)
-- how keymaps are set ::
-- vim.keymap.set()
-- arg1 = mode you want them to apply to, i.e. 'n' for normal
-- arg2 = command you are setting
-- arg3 = command it maps to
-- arg4 = options

-- save file without autoformatting
vim.keymap.set('n', '<leader>sn', '<cmd>noautocmd w <CR>', opts)

-- quit file with <C-q>
-- vim.keymap.set('n', '<C-q>', '<cmd> q <CR>', opts)

-- delete single character without copying into register
vim.keymap.set('n', 'x', '"_x', opts)

-- vertical scroll and centre
vim.keymap.set('n', '<C-d>', '<C-d>zz', opts)
vim.keymap.set('n', '<C-u>', '<C-u>zz', opts)

-- find and centre
vim.keymap.set('n', 'n', 'nzzv', opts)
vim.keymap.set('n', 'N', 'Nzzv', opts)

-- resize with arrows
vim.keymap.set('n', '<Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<Right>', ':vertical resize +2<CR>', opts)

-- buffers
vim.keymap.set('n', '<Tab>', ':bnext<CR>', opts)
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>', opts)
vim.keymap.set('n', '<leader>x', ':bnext<CR>', opts) -- close buffer
vim.keymap.set('n', '<leader>b', '<cmd> bnew <CR>', opts) -- new buffer

-- window management
vim.keymap.set('n', '<leader>v', '<C-w>v', opts) -- split window vertically
vim.keymap.set('n', '<leader>h', '<C-w>s', opts) -- split window horizontally
vim.keymap.set('n', '<leader>se', '<C-w>=', opts) -- make split equal
vim.keymap.set('n', '<leader>xs', ':close<CR>', opts) -- close window

-- navigate between splits
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>', opts)
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>', opts)
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>', opts)
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>', opts)

-- tabs
vim.keymap.set('n', '<leader>to', ':tabnew<CR>', opts) -- open new tab
-- vim.keymap.set('n', '<leader>tx', ':tabclose<CR>', opts) -- close tab
vim.keymap.set('n', '<leader>tx', ':bd<CR>', opts) -- close tab
vim.keymap.set('n', '<leader>tn', ':tabnCR>', opts) -- next tab
vim.keymap.set('n', '<leader>tp', ':tabp<CR>', opts) -- previous tab

-- toggle line wrapping
vim.keymap.set('n', '<leader>lw', '<cmd>set wrap!<CR>', opts)

-- stay in visual mode after indent
vim.keymap.set('n', '<', '<gv', opts)
vim.keymap.set('n', '>', '>gv', opts)

-- keep last yanked when pasting
vim.keymap.set('v', 'p', '"_dP', opts)

-- toggle diagnostics
local diagnostics_active = true

vim.keymap.set('n', '<leader>do', function()
    diagnostics_active = not diagnostics_active

    if diagnostics_active then
        vim.diagnostic.enable(0)
    else
        vim.diagnostic.disable(0)
    end
end)

-- diagnostics keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', 'd[', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- Save and load session
vim.keymap.set('n', '<leader>ss', ':mksession! .session.vim<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>sl', ':source .session.vim<CR>', { noremap = true, silent = false })

