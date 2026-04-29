-- nvim v0.8.0
return {
  'kdheepak/lazygit.nvim',
  lazy = true,
  cmd = {
    'LazyGit',
    'LazyGitConfig',
    'LazyGitCurrentFile',
    'LazyGitFilter',
    'LazyGitFilterCurrentFile',
  },
  -- optional for floating window border decoration
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  -- setting the keybinding for LazyGit with 'keys' is recommended in
  -- order to load the plugin when the command is run for the first time
  keys = {
    { '<leader>lg', '<cmd>LazyGit<cr>', desc = 'LazyGit' },
  },
  config = function()
    -- Only affect LazyGit terminal buffers
    vim.api.nvim_create_autocmd('TermOpen', {
      group = vim.api.nvim_create_augroup('LazyGitEscFix', { clear = true }),
      callback = function(args)
        local buf = args.buf
        local name = vim.api.nvim_buf_get_name(buf)

        if name:match 'lazygit' then
          -- Prevent <Esc> from closing the window
          vim.keymap.set('t', '<Esc>', '<Esc>', {
            buffer = buf,
            noremap = true,
            silent = true,
          })
        end
      end,
    })
  end,
}
