# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Neovim configuration built on top of LazyVim, a modern Neovim distribution. The configuration uses the Lazy.nvim plugin manager and follows the LazyVim structure and conventions.

## Code Formatting

- Use `stylua` for Lua code formatting: `stylua .`
- Configuration is in `stylua.toml` (2 spaces, 120 column width)
- Format before committing changes

## Architecture

### Directory Structure
- `init.lua` - Entry point with basic keymaps and lazy.nvim bootstrap
- `lua/config/` - Core configuration files that override LazyVim defaults
- `lua/plugins/` - Custom plugin configurations that extend LazyVim

### Key Files
- `lua/config/lazy.lua` - Lazy.nvim setup with LazyVim integration and extra specs
- `lua/plugins/lsp-config.lua` - LSP configurations for TypeScript, Go, Python, and Tailwind
- `lua/plugins/colorscheme.lua` - Theme configuration (currently Tokyo Night with transparency)

### Plugin Management
- Uses Lazy.nvim as the plugin manager
- Extends LazyVim with additional language support and customizations
- Plugin specifications are in individual files under `lua/plugins/`
- LazyVim extras are imported in `lua/config/lazy.lua`

### Language Support
- TypeScript/JavaScript with typescript.nvim and tsserver
- Go with gopls (comprehensive configuration with hints, analyses, and semantic tokens)
- Python with pyright
- Tailwind CSS with enhanced class regex patterns
- JSON support through LazyVim extras

### LSP Configuration
- LSP servers are configured through Mason and mason-lspconfig
- Custom LSP settings are in `lua/plugins/lsp-config.lua`
- Go LSP includes extensive gopls configuration with semantic tokens workaround
- TypeScript includes organize imports and rename file keymaps

## Development Commands

- Test configuration: `nvim --headless -c "checkhealth" -c "quit"`
- Launch Neovim: `nvim`
- Format Lua files: `stylua .`

## Important Notes

- This configuration is a dotfiles setup (part of a larger dotfiles repository)
- Uses transparent themes by default
- Buffer navigation is customized with Tab/Shift-Tab in init.lua
- Configuration follows LazyVim conventions - most default keymaps and options come from LazyVim