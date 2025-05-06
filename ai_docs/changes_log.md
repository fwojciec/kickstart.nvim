# Configuration Changes Log

This document tracks all customizations and changes made to the kickstart.nvim configuration.

## Change History

### 2025-05-06: Added Go language support with auto-formatting

**Files Modified:**
- `/init.lua` - Added Go formatters and language server configuration

**Changes:**
- Added gopls language server for Go code intelligence
- Configured automatic formatting for Go files on save using goimports and gofmt
- Uses the system-installed Go tools rather than Mason installations

**References:**
- https://github.com/golang/tools/tree/master/gopls
- https://pkg.go.dev/golang.org/x/tools/cmd/goimports
- https://pkg.go.dev/cmd/gofmt

### 2025-05-06: Added keybinding to save buffer with leader-w

**Files Modified:**
- `/init.lua` - Added new keybinding and updated which-key spec

**Changes:**
- Added mapping for `<leader>w` to save the current buffer (`:w` command)
- Updated which-key configuration to document the new keybinding

### 2025-05-06: Consolidated indent_line plugin directly in init.lua

**Files Modified:**
- `/init.lua` - Added indent-blankline.nvim configuration directly in the plugins section
- Removed `/lua/kickstart/plugins/indent_line.lua`

**Changes:**
- Consolidated indent-blankline.nvim config directly in init.lua
- Removed separate configuration file for better maintainability
- Maintained the same minimal setup:
  - Disabled built-in listchars
  - Configured for YAML files only
  - Used "▏" character for indent guides
  - Disabled scope highlighting
  - Auto-enabled for yaml, yml, and helm files

**References:**
- https://github.com/lukas-reineke/indent-blankline.nvim

### 2025-05-06: Added gruvbox-material colorscheme

**Files Modified:**
- `/init.lua` - Replaced default tokyonight colorscheme with gruvbox-material

**Changes:**
- Added the gruvbox-material colorscheme with 'hard' background setting
- Configured for better performance mode
- Replaced the default tokyonight colorscheme

**References:**
- https://github.com/sainnhe/gruvbox-material

<!--
Format for each entry:
### YYYY-MM-DD: Brief description of change

**Files Modified:**
- `/path/to/file.lua`

**Changes:**
- Detailed description of what was changed and why
- Any plugins added or removed
- Any key mappings added or modified

**References:**
- Any relevant links, plugin URLs, or documentation references
-->

<!-- Add new changes at the top of this section -->