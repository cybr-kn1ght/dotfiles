return {
  {
    'pmizio/typescript-tools.nvim',
    dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
    config = function()
      require('typescript-tools').setup {
        settings = {
          -- Disable tsserver from formatting (we use conform.nvim + prettier)
          tsserver_format_options = { enable = false },
          -- Disable tsserver from providing code actions on save
          tsserver_file_preferences = {
            includeInlayParameterNameHints = 'all',
            includeInlayParameterNameHintsWhenArgumentMatchesName = false,
            includeInlayFunctionParameterTypeHints = true,
            includeInlayVariableTypeHints = true,
            includeInlayPropertyDeclarationTypeHints = true,
            includeInlayFunctionLikeReturnTypeHints = true,
            includeInlayEnumMemberValueHints = true,
          },
          -- Use Mason-installed server as fallback
          tsserver_path = vim.fn.stdpath 'data' .. '/mason/packages/typescript-language-server/node_modules/.bin/typescript-language-server',
        },
      }
    end,
  },
}
