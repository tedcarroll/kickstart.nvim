return {
  'Julian/lean.nvim',
  event = { 'BufReadPre *.lean', 'BufNewFile *.lean' },

  dependencies = {
    -- optional dependencies:

    'nvim-telescope/telescope.nvim', -- for Lean-specific pickers
    'andymass/vim-matchup', -- for enhanced % motion behavior
    'andrewradev/switch.vim', -- for switch support
    'tomtom/tcomment_vim', -- for commenting
  },

  init = function()
    -- lake/lean live in ~/.elan/bin, which login-shell rc files add to PATH;
    -- make nvim self-sufficient regardless of how it was launched
    local elan_bin = vim.fn.expand '~/.elan/bin'
    if not string.find(vim.env.PATH or '', elan_bin, 1, true) then
      vim.env.PATH = elan_bin .. ':' .. vim.env.PATH
    end

    ---@type lean.Config
    vim.g.lean_config = { -- see the manual for full configuration options
      mappings = true,
    }
  end,
}
