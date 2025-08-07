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
- `init.lua` - Entry point with custom buffer navigation keymaps and lazy.nvim bootstrap
- `lua/config/` - LazyVim configuration overrides (most files are minimal and defer to LazyVim defaults)
- `lua/plugins/` - Custom plugin configurations that extend LazyVim's base functionality

### LazyVim Integration Pattern
This configuration extends LazyVim rather than replacing it:
- `lua/config/lazy.lua` imports LazyVim core plus selected extras (TypeScript, JSON, none-ls)
- Most config files in `lua/config/` are minimal placeholders that inherit LazyVim defaults
- Custom functionality is added through plugin specifications in `lua/plugins/`

### Key Plugin Configurations
- `lua/plugins/lsp-config.lua` - Comprehensive LSP setup with specialized configurations:
  - Go: gopls with extensive hints, analyses, and semantic tokens workaround
  - TypeScript: Custom typescript.nvim setup with organize imports and rename file keymaps
  - Tailwind: Enhanced class regex patterns for various frameworks
  - Python: pyright integration
- `lua/plugins/colorscheme.lua` - Tokyo Night theme with transparency settings
- `lua/plugins/quick-notes.lua` - Custom quick notes plugin with keybindings (`<leader>nn`, `<leader>nl`, `<leader>ns`)

### Custom Keymaps
- Buffer navigation: `<Tab>` (next buffer), `<S-Tab>` (previous buffer) defined in `init.lua`
- Quick notes: `<leader>nn` (new note), `<leader>nl` (list notes), `<leader>ns` (search notes)
- TypeScript: `<leader>co` (organize imports), `<leader>cR` (rename file)

## Development Commands

- Test configuration: `nvim --headless -c "checkhealth" -c "quit"`
- Launch Neovim: `nvim`
- Format Lua files: `stylua .`
- Plugin management: `:Lazy` (update, install, clean plugins)

## Plugin Architecture Patterns

### LSP Configuration Pattern
LSP servers are configured in `lua/plugins/lsp-config.lua` using multiple return blocks:
1. TypeScript block with typescript.nvim integration and custom keymaps
2. Main LSP block with server configurations (gopls, pyright, tailwindcss)
3. Mason integration block for automatic LSP server installation

### Plugin Loading Strategy
- LazyVim extras are imported in `lua/config/lazy.lua` for language support
- Custom plugins in `lua/plugins/` use lazy loading with `keys`, `cmd`, or `event` triggers
- Performance optimizations disable unused RTP plugins in lazy.nvim config

### Transparency Theme Pattern
Colorscheme configurations consistently use transparency settings:
```lua
opts = {
  transparent = true,
  styles = {
    sidebars = "transparent",
    floats = "transparent",
  },
}
```

## Important Notes

- This is a dotfiles configuration (part of a larger dotfiles repository)
- Inherits most functionality from LazyVim - avoid duplicating LazyVim features
- Uses semantic tokens workaround for Go LSP due to gopls limitations
- Quick notes plugin stores notes in `~/notes` directory by default