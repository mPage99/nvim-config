# 🛠️ Neovim Configuration (LazyVim-based)

Welcome to my personal Neovim configuration, built on top of [LazyVim](https://github.com/LazyVim/LazyVim). This setup is tailored for modern development with a focus on performance, plugin extensibility, and great defaults for coding in C, Python, JavaScript, Lua, and more.

## 🚀 Features

- ⚡ Powered by [LazyVim](https://github.com/LazyVim/LazyVim)
- 🌈 Full Nerd Font icon support
- 🧠 LSP + Autocompletion (via `nvim-lspconfig` and `nvim-cmp`)
- 🧪 Testing tools, formatting, and linting
- 🔍 Fuzzy finding with Telescope
- 🧭 File navigation with Harpoon
- 🌲 Syntax highlighting with Treesitter
- 🎨 Theme and UI customizations
- 🐢 Smooth performance even with large projects

## 📦 Plugin Highlights

Some of the plugins used in this setup include:

- `nvim-lspconfig` — Language Server Protocol support
- `mason.nvim` + `mason-lspconfig` — Easy LSP/DAP/server management
- `nvim-cmp` — Auto-completion engine
- `telescope.nvim` — Fuzzy finding, live grep, etc.
- `nvim-treesitter` — Powerful syntax highlighting
- `ThePrimeagen/harpoon` — Quick navigation between files
- `lewis6991/gitsigns.nvim` — Git integration
- `L3MON4D3/LuaSnip` — Snippet engine

## 📁 Structure
```
~/.config/nvim
├── init.lua # Entry point
├── lua/
│ ├── plugins/ # Lazy plugin definitions
│ ├── config/ # Custom plugin configs
│ └── ... # Additional logic & modules
```

## 🧰 Requirements

- **Neovim ≥ 0.9.0**
- **Nerd Font** (v3 or higher) for icon support
- Recommended terminal: `kitty`, `wezterm`, or any true color terminal

## 🧪 Custom Additions

This config includes several custom improvements beyond the default LazyVim experience:

### 🔍 JavaScript Docs with MDN

- Plugin: `js-docs-mdn.nvim`
- Quickly search MDN documentation for JavaScript methods and objects using Telescope-style fuzzy search.
- Helps boost productivity when working with unfamiliar browser APIs or native JavaScript methods.

### 🚀 Harpoon 2 Integration

- Enhanced file navigation using `ThePrimeagen/harpoon` (v2)
- Useful for jumping quickly between commonly used files in larger projects.
- Fully integrated with LazyVim’s plugin loader and UI.

### 🛠️ Language-Specific LSP Setup

- Automatically installs and configures Language Server Protocol (LSP) support for:
  - Go (`gopls`)
  - Lua (`lua_ls`)
  - TypeScript (`tsserver`)
  - Python (`pyright`)
- Managed through `mason.nvim` and `mason-lspconfig`
- LSP configurations are modular and stored in:
  - `lua/plugins/lsp.lua`
  - `lua/config/lsp/*.lua`

### 🪄 Visual Tweaks and UI Enhancements

- Icon-friendly UI with Nerd Font v3 support
- Minimal, readable styling with smart padding and spacing
- Designed for fast navigation and low visual clutter, making it ideal for everyday development

