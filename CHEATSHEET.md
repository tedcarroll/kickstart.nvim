# Neovim Cheatsheet

Leader: `<Space>`

## Finding Things

### Files
- `<leader>sf` - Find files by name
- `<leader>s.` - Recent files
- `<leader>sn` - Neovim config files
- `<leader><leader>` - Open buffers

### Content
- `<leader>sg` - Live grep (search in files)
- `<leader>sw` - Search current word
- `<leader>s/` - Search in open files
- `<leader>/` - Fuzzy search current buffer
- `<leader>S` - Project-wide search & replace (Spectre)
- `<leader>sp` - Search in current file (Spectre)

### Code Elements
- `<leader>sh` - Help docs
- `<leader>sk` - Keymaps
- `<leader>ss` - Telescope pickers
- `<leader>sr` - Resume last search
- `<leader>sd` - Diagnostics
- `gO` - Document symbols/outline
- `gW` - Workspace symbols

## Navigation

### Code
- `grd` - Go to definition
- `grr` - Find references
- `gri` - Go to implementation
- `grt` - Go to type definition
- `grD` - Go to declaration

### Files (Harpoon)
- `<leader>a` - Mark current file
- `<C-e>` - Toggle marks menu
- `<C-h>`, `<C-t>`, `<C-n>`, `<C-s>` - Jump to marks 1-4

### Windows
- `<C-h/j/k/l>` - Move between windows/tmux panes
- `<Esc>` - Clear search highlights

## Editing Code

### Refactoring
- `grn` - Rename symbol
- `gra` - Code action
- `<leader>ca` - Rust code action
- `<leader>f` - Format buffer

### Surround
- `saiw)` - Add () around word
- `sd'` - Delete ' quotes
- `sr)'` - Replace ) with '

### Text Objects
- `va)` - Select around )
- `vi'` - Select inside '
- `yinq` - Yank inside next quote

### Diagnostics
- `<leader>q` - Diagnostic quickfix list
- `<leader>xx` - All diagnostics (Trouble)
- `<leader>xX` - Buffer diagnostics (Trouble)
- `<leader>xL` - Location list (Trouble)
- `<leader>xQ` - Quickfix list (Trouble)
- `<leader>cs` - Symbols (Trouble)
- `<leader>cl` - LSP definitions/refs (Trouble)
- `<leader>th` - Toggle inlay hints

## Testing

- `<leader>tt` - Run nearest test
- `<leader>tf` - Run current file tests
- `<leader>td` - Debug nearest test
- `<leader>ts` - Toggle test summary
- `<leader>to` - Show test output
- `<leader>tO` - Toggle output panel
- `<leader>tS` - Stop tests

## Debugging

### Breakpoints
- `<leader>b` - Toggle breakpoint
- `<leader>B` - Conditional breakpoint
- `<leader>dr` - Rust debuggables

### Stepping
- `<F5>` - Start/Continue
- `<F1>` - Step into
- `<F2>` - Step over
- `<F3>` - Step out
- `<F7>` - Toggle debug UI

## Git

### Viewing Changes
- `<leader>gd` - Diff view
- `<leader>gh` - File history
- `<leader>gH` - Project history
- `<leader>gc` - Close diff view

### Signs (in gutter)
- `+` - Added lines
- `~` - Changed lines
- `_` - Deleted lines

## Python-Specific

- `<leader>vs` - Select virtual environment
- `<leader>vc` - Use cached venv

## Completion (Insert Mode)

- `<C-y>` - Accept completion
- `<C-space>` - Open menu / show docs
- `<C-n>/<C-p>` or `↑/↓` - Next/previous item
- `<C-e>` - Close menu
- `<C-k>` - Toggle signature help
- `<Tab>/<S-Tab>` - Navigate snippet placeholders

## Terminal

- `<Esc><Esc>` - Exit terminal mode

## Utilities

- `:Lazy` - Manage plugins
- `:Mason` - Install LSP servers/tools
- `:checkhealth` - Diagnose issues
- `:Telescope` - All pickers
- `?` in which-key/Telescope - Show help

## Tips

**Auto-format**: Enabled on save for Python and Rust

**Which-key**: Wait after `<leader>` to see available commands

**Telescope help**: Press `<C-/>` (insert) or `?` (normal) in any picker for picker-specific keymaps

**Neotest output**: `<leader>to` enters output window, `<leader>tO` toggles panel at bottom
