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
    map('n', '<A-a>', function() list:select(1) end, { desc = 'Harpoon file 1' })
    map('n', '<A-s>', function() list:select(2) end, { desc = 'Harpoon file 2' })
    map('n', '<A-d>', function() list:select(3) end, { desc = 'Harpoon file 3' })
    map('n', '<A-f>', function() list:select(4) end, { desc = 'Harpoon file 4' })
  end,
}
