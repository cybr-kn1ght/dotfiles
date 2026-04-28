return {
  'akinsho/toggleterm.nvim',
  version = '*',

  cmd = { 'ToggleTerm', 'TermExec' },

  keys = {
    { '<C-t>', '<cmd>ToggleTerm<cr>', desc = 'Toggle Terminal' },
    { '<leader>tf', '<cmd>ToggleTerm direction=float<cr>', desc = 'Floating Terminal' },
    { '<leader>th', '<cmd>ToggleTerm direction=horizontal<cr>', desc = 'Horizontal Terminal' },
    { '<leader>tv', '<cmd>ToggleTerm direction=vertical<cr>', desc = 'Vertical Terminal' },
    { '<leader>t1', '<cmd>ToggleTerm 1<cr>', desc = 'Terminal 1' },
    { '<leader>t2', '<cmd>ToggleTerm 2<cr>', desc = 'Terminal 2' },
    { '<leader>t3', '<cmd>ToggleTerm 3<cr>', desc = 'Terminal 3' },
  },

  opts = {
    size = function(term)
      if term.direction == 'horizontal' then
        return 15
      elseif term.direction == 'vertical' then
        return math.floor(vim.o.columns * 0.4)
      end
    end,

    open_mapping = [[<c-t>]],
    hide_numbers = true,
    shade_terminals = true,
    shading_factor = 2,
    start_in_insert = true,
    insert_mappings = true,
    persist_size = true,
    persist_mode = true,
    direction = 'float',
    close_on_exit = true,
    shell = vim.o.shell,

    float_opts = {
      border = 'rounded',
      winblend = 0,
    },
  },

  config = function(_, opts)
    require('toggleterm').setup(opts)

    -- Terminal-only keymaps
    vim.api.nvim_create_autocmd('TermOpen', {
      pattern = 'term://*',
      callback = function()
        local map = vim.keymap.set
        local opts = { buffer = true, silent = true }

        map('t', '<esc>', [[<C-\><C-n>]], opts)
        map('t', 'jk', [[<C-\><C-n>]], opts)

        map('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
        map('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
        map('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
        map('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
      end,
    })
  end,
}
