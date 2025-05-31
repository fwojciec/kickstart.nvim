# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is **kickstart.nvim** - a minimalist, single-file Neovim configuration framework designed as a starting point for building custom Neovim setups. It's a well-documented template, not a full distribution.

## Configuration Framework

### Core Philosophy
- **Single-file approach**: Everything lives in `init.lua` for transparency and ease of understanding
- **Self-documenting**: The configuration file contains extensive comments explaining each section
- **Modular by design**: Optional features can be enabled/disabled without breaking the core setup

### Structure
- **init.lua**: The main configuration containing all settings, keymaps, and plugin definitions
- **lua/kickstart/plugins/**: Optional plugin configurations that can be enabled
- **lua/custom/plugins/**: Space for user-defined configurations

### Plugin System
Uses **lazy.nvim** for plugin management. Plugins are defined in a single `require('lazy').setup({...})` call with two configuration patterns:
- Simple: Pass options via `opts = {}`
- Complex: Use `config = function() ... end` for detailed setup

## Working with This Configuration

### Adding Features
1. Most changes should be made directly in `init.lua`
2. Look for the relevant section (keymaps, plugins, LSP settings)
3. Follow the existing patterns and style

### LSP and Language Support
- Language servers are managed through Mason
- Add new servers to the `servers` table in the LSP section
- Each server can have custom settings passed through the table

### Testing and Development Tools
- The configuration supports various testing frameworks through plugins
- Formatting and linting are handled automatically on save
- Development commands are typically mapped under the `<leader>` key

## Key Principles

1. **Direct editing is encouraged** - Don't be afraid to modify init.lua
2. **Optional features** - Check the bottom of init.lua for commented imports
3. **Consistency** - Follow the existing code style and organizational patterns
4. **Documentation** - The init.lua file itself is the best reference

## Technical Requirements

- Neovim 0.10+ (stable or nightly)
- External tools: git, make, unzip, C compiler, ripgrep
- Optional: Nerd Font for icons (controlled by `vim.g.have_nerd_font`)