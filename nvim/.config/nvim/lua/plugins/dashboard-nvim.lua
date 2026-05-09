-- Doom dashboard config
local quotes = {
  '"Sometimes you never realize the value of a moment until it becomes a memory." - Dr Seuss',
  '"Talk is cheap. Show me the code." - Linus Torvalds',
  '"In theory, theory and practice are the same. In practice, they’re not." - Yoggi Berra',
  '"I don\'t care if it works on your machine! We are not shipping your machine!" - Vidiu Platon.',
  '“To iterate is human, to recurse divine.” - L. Peter Deutsch',
  '"The best way to predict the future is to create it." - Peter Drucker',
  '"Most good programmers do programming not because they expect to get paid or get adulation by the public, but because it is fun to program." - Linus Torvalds',
  '"Simplicity is the ultimate sophistication." - Leonardo da Vinci',
  '"Always code as if the guy who ends up maintaining your code will be a violent psychopath who knows where you live." - Martin Golding',
  '"Make it work, make it right, make it fast." - Kent Beck',
  '"Any fool can write code that a computer can understand. Good programmers write code that humans can understand." - Martin Fowler',
}

local doom = function()
  local db = require 'dashboard'
  db.setup {
    theme = 'doom',
    config = {
      vertical_center = true,

      header = {
        [[                                                                                     ]],
        [[                                                                                     ]],
        [[                                                                                     ]],
        [[                                                                                     ]],
        [[  ▄████████ ▄██   ▄   ▀█████████▄     ▄████████      ▄█    █▄   ▄█    ▄▄▄▄███▄▄▄▄    ]],
        [[ ███    ███ ███   ██▄   ███    ███   ███    ███     ███    ███ ███  ▄██▀▀▀███▀▀▀██▄  ]],
        [[ ███    █▀  ███▄▄▄███   ███    ███   ███    ███     ███    ███ ███▌ ███   ███   ███  ]],
        [[ ███        ▀▀▀▀▀▀███  ▄███▄▄▄██▀   ▄███▄▄▄▄██▀     ███    ███ ███▌ ███   ███   ███  ]],
        [[ ███        ▄██   ███ ▀▀███▀▀▀██▄  ▀▀███▀▀▀▀▀       ███    ███ ███▌ ███   ███   ███  ]],
        [[ ███    █▄  ███   ███   ███    ██▄ ▀███████████     ███    ███ ███  ███   ███   ███  ]],
        [[ ███    ███ ███   ███   ███    ███   ███    ███     ███    ███ ███  ███   ███   ███  ]],
        [[ ████████▀   ▀█████▀  ▄█████████▀    ███    ███      ▀██████▀  █▀    ▀█   ███   █▀   ]],
        [[                                                                                     ]],
        [[                                                                                     ]],
        [[                                                                                     ]],
        [[                                                                                     ]],
      },

      center = {
        { icon = '+ ', desc = 'New File', key = 'n', action = 'enew' },
        { icon = ' ', desc = 'Find File', key = 'f', action = 'Telescope find_files' },
        { icon = ' ', desc = 'Recent Files', key = 'r', action = 'Telescope oldfiles' },
        { icon = ' ', desc = 'Find Word (Grep)', key = 'g', action = 'Telescope live_grep' },
        { icon = ' ', desc = 'Quit', key = 'q', action = 'qa' },
      },

      footer = {
        '',
        quotes[math.random(#quotes)],
        '',
        '',
      },
    },
  }

  vim.keymap.set('n', '<leader>d', '<cmd>Dashboard<CR>', { desc = '[D]ashboard' })

  -- Centre on resize
  vim.api.nvim_create_autocmd('VimResized', {
    callback = function() vim.cmd 'Dashboard' end,
  })
end

return {
  {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function() doom() end,
  },
}
