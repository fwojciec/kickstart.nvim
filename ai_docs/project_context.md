# Kickstart.nvim Project Context

## Overview
Kickstart.nvim is a minimalist Neovim configuration designed as a starting point for users to build their own customized setup. It provides a single-file, well-documented configuration that focuses on modern Neovim features and plugins.

## Project Structure
- `/init.lua`: The main configuration file containing all core settings and plugin definitions
- `/lua/kickstart/plugins/`: Directory containing optional plugin configurations that can be enabled
- `/lua/custom/plugins/`: Directory for user-defined custom plugin configurations
- `/doc/`: Contains documentation

## Core Configuration (init.lua)
The `init.lua` file is the central configuration point with several key components:

1. **Basic Settings**:
   - Leader key set to space
   - UI configurations (line numbers, mouse support, cursor line highlighting)
   - Clipboard integration
   - Whitespace display options
   - Split behavior

2. **Key Mappings**:
   - `<space>` as leader key
   - Window navigation with `<C-h/j/k/l>`
   - Diagnostic navigation with `<leader>q`
   - Search highlighting cleared with `<Esc>`

3. **Plugin Management**:
   - Uses `lazy.nvim` for plugin management
   - Plugins defined directly in the `require('lazy').setup({...})` call
   - Core plugins included by default, optional plugins commented out

## Primary Plugins

| Plugin | Purpose |
|--------|---------|
| `lazy.nvim` | Plugin manager |
| `nvim-lspconfig` | LSP configuration |
| `mason.nvim` | LSP/DAP/linter manager |
| `telescope.nvim` | Fuzzy finder |
| `nvim-treesitter` | Syntax highlighting |
| `which-key.nvim` | Key binding helper |
| `gitsigns.nvim` | Git integration |
| `gruvbox-material` | Color scheme |
| `blink.cmp` | Autocompletion |
| `LuaSnip` | Snippet engine |
| `conform.nvim` | Formatting |
| `mini.nvim` | Collection of small utilities |
| `todo-comments.nvim` | Highlight TODOs in comments |

## Language Server Protocol (LSP)
- Configuration centralized in the LSP section of `init.lua`
- Uses `mason.nvim` for automatic installation of language servers
- Default mappings set on LSP attachment:
  - `grn`: Rename
  - `gra`: Code action
  - `grr`: Find references
  - `grd`: Go to definition
  - `grt`: Go to type definition
  - Additional mappings for document symbols, workspace symbols, etc.

## Optional Plugins
The following plugins are defined in `/lua/kickstart/plugins/` but are not enabled by default:

1. `debug.lua`: DAP integration for debugging
2. `neo-tree.lua`: File explorer
3. `indent_line.lua`: Visual indentation guides
4. `lint.lua`: Code linting
5. `autopairs.lua`: Auto-close brackets/quotes
6. `gitsigns.lua`: Enhanced git integration with keymaps

## Customization Approach
The primary customization pattern is:

1. Edit `init.lua` directly for most changes - this is the preferred method for:
   - Changing basic settings
   - Modifying or adding key mappings
   - Adding/replacing plugins (including colorschemes)
   - Configuring LSP and completion settings
   
2. Uncomment optional plugin imports at the bottom of `init.lua` for built-in extensions

3. Use `/lua/custom/plugins/` directory only for complex plugin configurations that would clutter the main file
   - This is an optional approach for organization
   - For most customizations, direct edits to `init.lua` are preferred

## Key Features for Customization
- Plugin options are typically set via `opts = {}` parameter
- Full configuration can be done via `config = function() ... end`
- LSP servers are configured in the `servers` table
- Telescope mappings defined under `<leader>s` prefix
- Format on save enabled by default via conform.nvim

## Recent Changes
- Changed colorscheme from tokyonight to gruvbox-material
- Switched from nvim-cmp to blink.cmp for completion
- Removed Telescope 0.1 branch lock
- Changed LSP keybindings to match default `gr` bindings in Neovim 0.11
- lazy-lock.json is now tracked in the repository

## Technical Requirements
- Compatible with latest Neovim stable and nightly (targeting 0.10+)
- External requirements: git, make, unzip, C compiler, ripgrep
- Optional: Nerd Font for icons (controlled by `vim.g.have_nerd_font` setting)
```