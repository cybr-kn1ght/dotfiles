return {
  {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    config = function()
      local parsers = {
        'bash',
        'c',
        'c_sharp',
        'diff',
        'html',
        'lua',
        'luadoc',
        'markdown',
        'markdown_inline',
        'query',
        'vim',
        'vimdoc',
        'javascript',
        'typescript',
        'tsx',
      }

      require('nvim-treesitter').install(parsers)

      local filetypes = {
        'bash',
        'c',
        'cs',
        'diff',
        'html',
        'lua',
        'luadoc',
        'markdown',
        'vim',
        'vimdoc',
        'javascript',
        'javascriptreact',
        'typescript',
        'typescriptreact',
      }

      vim.api.nvim_create_autocmd('FileType', {
        pattern = filetypes,
        callback = function(args) pcall(vim.treesitter.start, args.buf) end,
      })
    end,
  },
}
