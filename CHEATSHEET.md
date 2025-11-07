# Neovim Configuration Cheatsheet

## Leader Key
- Leader: `<Space>`
- Local Leader: `<Space>`

## General

### Basic Navigation
- `<C-h/j/k/l>` - Move between windows (also works with tmux panes)
- `<Esc>` - Clear search highlights

### Terminal
- `<Esc><Esc>` - Exit terminal mode

### Diagnostics
- `<leader>q` - Open diagnostic quickfix list

## File Management

### Telescope (Fuzzy Finder)
- `<leader>sh` - Search help
- `<leader>sk` - Search keymaps
- `<leader>sf` - Search files
- `<leader>ss` - Search select Telescope
- `<leader>sw` - Search current word
- `<leader>sg` - Search by grep (live)
- `<leader>sd` - Search diagnostics
- `<leader>sr` - Search resume
- `<leader>s.` - Search recent files
- `<leader><leader>` - Find existing buffers
- `<leader>/` - Fuzzy search in current buffer
- `<leader>s/` - Live grep in open files
- `<leader>sn` - Search Neovim config files

### Neo-tree (File Explorer)
- Default keymaps within neo-tree interface
- Check `:help neo-tree` for details

### Harpoon (Quick File Navigation)
- `<leader>a` - Add current file to harpoon
- `<C-e>` - Toggle harpoon menu
- `<C-h>` - Go to harpoon file 1
- `<C-t>` - Go to harpoon file 2
- `<C-n>` - Go to harpoon file 3
- `<C-s>` - Go to harpoon file 4

## LSP (Language Server)

### Code Navigation
- `grd` - Go to definition
- `grr` - Go to references
- `gri` - Go to implementation
- `grt` - Go to type definition
- `grD` - Go to declaration
- `gO` - Open document symbols
- `gW` - Open workspace symbols

### Code Actions
- `grn` - Rename symbol
- `gra` - Code action
- `<leader>f` - Format buffer

### Inlay Hints
- `<leader>th` - Toggle inlay hints

## Git

### Gitsigns (Built-in)
- Signs in gutter: `+` (add), `~` (change), `_` (delete)
- Additional keymaps from kickstart.plugins.gitsigns

### Diffview
- `<leader>gd` - Open git diff view
- `<leader>gh` - File history (current file)
- `<leader>gH` - All history (entire repo)
- `<leader>gc` - Close diffview

## Search & Replace

### Spectre (Project-wide)
- `<leader>S` - Toggle Spectre
- `<leader>sw` - Search current word (normal mode)
- `<leader>sw` - Search selection (visual mode)
- `<leader>sp` - Search in current file

## Debugging (DAP)

### Breakpoints
- `<leader>b` - Toggle breakpoint
- `<leader>B` - Set conditional breakpoint

### Debugging Controls
- `<F5>` - Start/Continue
- `<F1>` - Step into
- `<F2>` - Step over
- `<F3>` - Step out
- `<F7>` - Toggle debug UI

## Testing (Neotest)

### Run Tests
- `<leader>tt` - Run nearest test
- `<leader>tf` - Run current file
- `<leader>td` - Debug nearest test
- `<leader>tS` - Stop tests

### Test UI
- `<leader>ts` - Toggle summary
- `<leader>to` - Show output
- `<leader>tO` - Toggle output panel

## Python-Specific

### Virtual Environment
- `<leader>vs` - Select virtual environment
- `<leader>vc` - Use cached virtual environment

### Tools
- **LSP**: Ruff (completion, go-to-def, hover)
- **Type Checking**: mypy (via nvim-lint)
- **Formatting**: Ruff (organize imports + format)
- **Debugging**: debugpy
- **Testing**: pytest/unittest (via neotest-python)

## Diagnostics & Errors

### Trouble
- `<leader>xx` - Toggle diagnostics
- `<leader>xX` - Buffer diagnostics
- `<leader>cs` - Symbols
- `<leader>cl` - LSP definitions/references
- `<leader>xL` - Location list
- `<leader>xQ` - Quickfix list

## Text Objects & Editing

### Mini.ai (Better text objects)
- `va)` - Visually select around parentheses
- `yinq` - Yank inside next quote
- `ci'` - Change inside quote

### Mini.surround
- `saiw)` - Surround add inner word with parentheses
- `sd'` - Surround delete quotes
- `sr)'` - Surround replace ) with '

### Auto-pairs
- Automatically closes brackets, quotes, parentheses

## Visual Aids

### Indent Lines
- Visual indent guides (automatically shown)

### Which-key
- Shows pending keybinds after delay
- Press `?` in which-key for help

## Plugin Management

### Lazy.nvim
- `:Lazy` - Open plugin manager
- `:Lazy update` - Update plugins
- `:Lazy sync` - Install/update/clean plugins

### Mason (LSP/Tool Installer)
- `:Mason` - Open Mason UI
- `g?` - Help in Mason UI

## Completion (Blink.cmp)

### Insert Mode
- `<C-y>` - Accept completion
- `<C-space>` - Open menu or docs
- `<C-n>/<C-p>` or `<Up>/<Down>` - Select next/previous
- `<C-e>` - Hide menu
- `<C-k>` - Toggle signature help
- `<Tab>/<S-Tab>` - Move right/left in snippet

## Additional Commands

### Format on Save
- Enabled for Python (Ruff)
- Disabled for C/C++
- Add to `disable_filetypes` table to disable for other languages

### Treesitter
- Syntax highlighting for: bash, c, diff, html, lua, markdown, python, vim
- Auto-install enabled for other languages

## Tips

1. **Check health**: `:checkhealth` to diagnose issues
2. **Search help**: `<leader>sh` is your friend
3. **Lazy loading**: Most plugins load on-demand for fast startup
4. **Custom plugins**: Add to `lua/custom/plugins/*.lua`
5. **Nerd Font**: Enabled - ensure your terminal uses a Nerd Font
6. **Relative numbers**: Enabled - useful for motions like `10j` or `5dd`
