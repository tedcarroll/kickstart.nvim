return {
  'mrcjkb/rustaceanvim',
  version = '^5',
  lazy = false,
  init = function()
    vim.g.rustaceanvim = {
      tools = {
        hover_actions = {
          auto_focus = false,
        },
      },
      server = {
        on_attach = function(client, bufnr)
          -- Use the same keymaps as other LSPs
          local map = function(keys, func, desc)
            vim.keymap.set('n', keys, func, { buffer = bufnr, desc = 'LSP: ' .. desc })
          end

          -- Rust-specific keymaps
          map('<leader>ca', function()
            vim.cmd.RustLsp 'codeAction'
          end, 'Code Action (Rust)')

          map('<leader>dr', function()
            vim.cmd.RustLsp 'debuggables'
          end, '[D]ebug [R]ust')
        end,
        default_settings = {
          ['rust-analyzer'] = {
            cargo = {
              allFeatures = true,
            },
            checkOnSave = true,
            check = {
              command = 'clippy',
            },
          },
        },
      },
      dap = {},
    }
  end,
}
