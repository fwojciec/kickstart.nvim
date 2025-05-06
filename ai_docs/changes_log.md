# Configuration Changes Log

This document tracks all customizations and changes made to the kickstart.nvim configuration.

## Change History

### 2025-05-06: Enabled minimal indent_line plugin for YAML files

**Files Modified:**
- `/init.lua` - Enabled the indent_line plugin
- `/lua/kickstart/plugins/indent_line.lua` - Customized indent line config

**Changes:**
- Added minimal indent-blankline.nvim configuration
- Disabled built-in listchars for tabs and special characters
- Configured to only show indentation guides for YAML and YAML-like files
- Used "▏" character for indent guides
- Disabled scope highlighting
- Set up auto-commands to automatically enable for yaml, yml, and helm files

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