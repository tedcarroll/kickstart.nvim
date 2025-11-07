return {
  'linux-cultist/venv-selector.nvim',
  dependencies = {
    'neovim/nvim-lspconfig',
    'nvim-telescope/telescope.nvim',
    'mfussenegger/nvim-dap-python',
  },
  branch = 'regexp',
  opts = {
    name = {
      'venv',
      '.venv',
      'env',
      '.env',
    },
  },
  keys = {
    {
      '<leader>vs',
      '<cmd>VenvSelect<cr>',
      desc = '[V]env [S]elect',
    },
    {
      '<leader>vc',
      '<cmd>VenvSelectCached<cr>',
      desc = '[V]env select [C]ached',
    },
  },
}
