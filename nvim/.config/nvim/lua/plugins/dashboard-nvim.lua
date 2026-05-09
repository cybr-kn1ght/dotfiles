-- Doom dashboard config
local quotes = {
  '"Sometimes you never realize the value of a moment until it becomes a memory." - Dr Seuss',
  '"Talk is cheap. Show me the code." - Linus Torvalds',
  '"In theory, theory and practice are the same. In practice, they’re not." - Yoggi Berra',
  '"I don\'t care if it works on your machine! We are not shipping your machine!" - Vidiu Platon',
  '“To iterate is human, to recurse divine.” - L. Peter Deutsch',
  '"The best way to predict the future is to create it." - Peter Drucker',
  '“You only live once, but if you do it right, once is enough.” ― Mae West',
  '“Be the change that you wish to see in the world.” ― Mahatma Gandhi',
  "“If you tell the truth, you don't have to remember anything.” ― Mark Twain",
  '“To live is the rarest thing in the world. Most people exist, that is all.” ― Oscar Wilde',
  '“Always forgive your enemies; nothing annoys them so much.” ― Oscar Wilde',
  '“Live as if you were to die tomorrow. Learn as if you were to live forever.” ― Mahatma Gandhi',
  '“The fool doth think he is wise, but the wise man knows himself to be a fool.” ― William Shakespeare',
  '“Life is what happens to us while we are making other plans.” ― Allen Saunders',
  '“I like nonsense, it wakes up the brain cells. Fantasy is a necessary ingredient in living.” ― Dr. Seuss',
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
