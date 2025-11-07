return {
  'sindrets/diffview.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  keys = {
    {
      '<leader>gd',
      '<cmd>DiffviewOpen<cr>',
      desc = '[G]it [D]iff view',
    },
    {
      '<leader>gh',
      '<cmd>DiffviewFileHistory %<cr>',
      desc = '[G]it file [H]istory',
    },
    {
      '<leader>gH',
      '<cmd>DiffviewFileHistory<cr>',
      desc = '[G]it all [H]istory',
    },
    {
      '<leader>gc',
      '<cmd>DiffviewClose<cr>',
      desc = '[G]it diff [C]lose',
    },
  },
  opts = {},
}
