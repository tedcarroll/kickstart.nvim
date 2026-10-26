return {
  -- Line/block review comments exported as Markdown for AI pair programming.
  -- Registers its own <leader>r* keymaps in setup(), so load eagerly (no `keys`).
  'choplin/code-review.nvim',
  opts = function()
    -- Persist each comment as it is added (default is memory-only, lost on exit).
    -- The plugin resolves a relative storage dir once per session, so a later :cd
    -- would move where new comments land. Give it an absolute path instead.
    local root = vim.fs.root(vim.fn.getcwd(), '.git') or vim.fn.getcwd()
    return {
      ui = {
        input_window = {
          title = ' Add Comment (Esc then Enter to submit) ',
        },
      },
      comment = {
        storage = { backend = 'file', file = { dir = root .. '/.code-review' } },
      },
    }
  end,
  config = function(_, opts)
    require('code-review').setup(opts)

    -- The float's only submit key is <C-CR>, which tmux/most terminals deliver as a
    -- plain <CR>. Mirror the plugin's other input float: normal-mode <CR> submits.
    vim.api.nvim_create_autocmd('User', {
      pattern = 'CodeReviewInputEnter',
      callback = function(ev)
        local funcs = require('code-review').get_input_buffer_functions(ev.data.buf)
        vim.keymap.set('n', '<CR>', funcs.submit, { buffer = ev.data.buf, nowait = true, desc = 'Submit review comment' })
      end,
    })
  end,
}
