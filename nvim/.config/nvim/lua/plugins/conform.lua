return {
  {
    'stevearc/conform.nvim',
    event = 'BufWritePre',
    cmd = { 'ConformInfo' },
    keys = {
      {
        '<leader>f',
        function() require('conform').format { async = true } end,
        desc = '[F]ormat buffer',
      },
    },
    opts = {
      notify_on_error = true,

      format_on_save = {
        timeout_ms = 500,
        lsp_format = false,
      },

      formatters_by_ft = {
        lua = { 'stylua' },

        html = { 'prettier' },
        angular = { 'prettier' },
        css = { 'prettier' },
        scss = { 'prettier' },

        javascript = { 'prettier' },
        typescript = { 'prettier' },
        typescriptreact = { 'prettier' },
      },
    },
  },
}
