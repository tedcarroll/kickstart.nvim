-- Activate the project's virtualenv inside Neovim itself, the way `uv run` does:
-- set VIRTUAL_ENV and put <venv>/bin at the front of PATH. Everything Neovim
-- spawns afterwards -- basedpyright, ruff, neotest, :terminal, :!python --
-- resolves `python` to the project interpreter, so plain `nvim` needs no wrapper.
--
-- The search runs upward from the cwd, so it also finds the venv at a uv
-- *workspace* root when Neovim is started inside a member package.

local M = {}

-- The bin directory this module put on PATH, so a later activation can take it
-- back off instead of stacking entries.
local active_bin = nil

local function path_without(bin)
  return vim.tbl_filter(function(entry)
    return entry ~= bin
  end, vim.split(vim.env.PATH, ':', { plain = true }))
end

local function find_venv(dir)
  local found = vim.fs.find({ '.venv', 'venv' }, { path = dir, upward = true, type = 'directory' })[1]
  if found and vim.fn.executable(found .. '/bin/python') == 1 then
    return found
  end
end

--- Point the environment at the venv above `dir`, or clear it when there is none.
function M.activate(dir)
  local venv = find_venv(dir or vim.fn.getcwd())
  if venv == vim.env.VIRTUAL_ENV then
    return
  end

  if active_bin then
    vim.env.PATH = table.concat(path_without(active_bin), ':')
    active_bin = nil
  end

  vim.env.VIRTUAL_ENV = venv
  if venv then
    active_bin = venv .. '/bin'
    vim.env.PATH = active_bin .. ':' .. vim.env.PATH
    -- PYTHONHOME would override the venv's prefix; the activate script drops it too.
    vim.env.PYTHONHOME = nil
  end
end

M.activate()

vim.api.nvim_create_autocmd('DirChanged', {
  desc = 'Re-activate the virtualenv for the new working directory',
  group = vim.api.nvim_create_augroup('venv-activate', { clear = true }),
  callback = function(args)
    M.activate(args.file)
  end,
})

return M
