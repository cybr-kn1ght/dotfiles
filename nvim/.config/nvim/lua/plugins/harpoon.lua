return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },

  config = function()
    -----------------------------------------------------------------------
    -- Setup
    -----------------------------------------------------------------------
    local harpoon = require 'harpoon'

    harpoon:setup {
      settings = {
        save_on_toggle = true,
        sync_on_ui_close = true,
      },
    }

    -----------------------------------------------------------------------
    -- Convenience locals
    -----------------------------------------------------------------------
    local list = harpoon:list()
    local ui = harpoon.ui
    local term = harpoon.term

    -----------------------------------------------------------------------
    -- Keymaps
    -----------------------------------------------------------------------
    local map = vim.keymap.set

    -- Add file + toggle menu
    map('n', '<leader>h', function() list:add() end, { desc = '[H]arpoon file' })
    map('n', '<C-e>', function() ui:toggle_quick_menu(list) end, { desc = 'Harpoon menu' })

    -- Jump to files 1–4
    map('n', '<C-a>', function() list:select(1) end, { desc = 'Harpoon file 1' })
    map('n', '<C-s>', function() list:select(2) end, { desc = 'Harpoon file 2' })
    map('n', '<C-d>', function() list:select(3) end, { desc = 'Harpoon file 3' })
    map('n', '<C-f>', function() list:select(4) end, { desc = 'Harpoon file 4' })

    -- Cycle through Harpoon list
    map('n', '<leader>n', function() list:next() end, { desc = 'Harpoon next' })
    map('n', '<leader>p', function() list:prev() end, { desc = 'Harpoon previous' })

    -----------------------------------------------------------------------
    -- (Optional) Harpoon terminals
    -----------------------------------------------------------------------
    map('n', '<leader>t1', function() term.gotoTerminal(1) end, { desc = 'Harpoon terminal 1' })
    map('n', '<leader>t2', function() term.gotoTerminal(2) end, { desc = 'Harpoon terminal 2' })
  end,
}
