-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- ═══════════════════════════════════════════════════════════
-- SEARCH & NAVIGATION
-- ═══════════════════════════════════════════════════════════
-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Select all content
vim.keymap.set('n', '<C-a>', 'ggVG', { noremap = true, silent = true, desc = 'Select all' })

-- Copy whole file to clipboard
vim.keymap.set('n', '<C-c>', ':%y+<CR>', { noremap = true, silent = true })

-- ═══════════════════════════════════════════════════════════
-- TEXT EDITING
-- ═══════════════════════════════════════════════════════════

-- Move lines up/down
vim.keymap.set('n', '<A-j>', "<cmd>execute 'move .+' . v:count1<cr>==", { desc = 'Move Down' })
vim.keymap.set('n', '<A-k>', "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", { desc = 'Move Up' })

-- Commenting (add comment above/below current line)
vim.keymap.set('n', '<leader>cb', 'o<esc>Vcx<esc><cmd>normal gcc<cr>fxa<bs>', { desc = 'Add [C]omment [B]elow' })
vim.keymap.set('n', '<leader>ca', 'O<esc>Vcx<esc><cmd>normal gcc<cr>fxa<bs>', { desc = 'Add [C]omment [A]bove' })

-- ═══════════════════════════════════════════════════════════
-- FILE OPERATIONS
-- ═══════════════════════════════════════════════════════════

-- Save file (works in all modes)
vim.keymap.set({ 'i', 'x', 'n', 's' }, '<C-s>', '<cmd>w<cr><esc>', { desc = 'Save File' })

-- ═══════════════════════════════════════════════════════════
-- WINDOW MANAGEMENT (splitting and navigation)
-- ═══════════════════════════════════════════════════════════

-- Keybinds to make split navigation easier
--  Use CTRL+<hjkl> to switch between windows
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- ═══════════════════════════════════════════════════════════
-- AUTO COMMANDS
-- ═══════════════════════════════════════════════════════════
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  See `:help vim.hl.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function() vim.hl.on_yank() end,
})

-- ═══════════════════════════════════════════════════════════
-- UTILITY
-- ═══════════════════════════════════════════════════════════
-- Toggle line wrapping
vim.keymap.set('n', '<leader>w', '<cmd>set wrap!<CR>', { desc = 'Toggle [W]rap', silent = true })
