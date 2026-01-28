# Neovim Configuration Analysis

This is a well-structured Neovim configuration using modern Lua patterns and the lazy.nvim plugin manager.

## Repository Structure

```
init.lua                 # Entry point - loads core and lazy
lua/
├── core/               # Core Neovim settings
│   ├── init.lua       # Loads options and keymaps
│   ├── options.lua    # Vim options (line numbers, tabs, etc.)
│   └── keymaps.lua    # Key mappings with <space> as leader
├── lazy.lua           # Lazy.nvim bootstrap and setup
└── plugins/           # Plugin configurations
    ├── init.lua       # Basic plugins (plenary, tmux-navigator)
    ├── *.lua          # Individual plugin configs
    └── lsp/           # LSP-specific configurations
```

## Key Patterns

### 1. Modular Organization
Each plugin gets its own file returning a lazy.nvim spec. This keeps configurations organized and maintainable.

### 2. Lazy Loading
Plugins use `event`, `dependencies`, and `config` for optimal startup performance.

### 3. Consistent Plugin Structure
Plugin files follow this pattern:
```lua
return {
  "plugin/name",
  dependencies = {...},
  config = function() ... end,
}
```

### 4. Keymap Management
- Core keymaps in `core/keymaps.lua` with `<space>` as leader key
- Plugin-specific keymaps defined in their respective config functions
- Consistent pattern: `keymap.set(mode, key, action, opts)`

### 5. LSP Setup
- Mason for LSP server and tool management
- Auto-installation of servers: Go, Terraform, TypeScript, Python, Lua, etc.
- Comprehensive keybindings automatically set on LSP attach
- Deep integration with Telescope for LSP navigation

## Tool Stack

| Component | Plugin | Purpose |
|-----------|--------|---------|
| **Plugin Manager** | lazy.nvim | Modern plugin management with lazy loading |
| **Colorscheme** | Catppuccin Mocha | Dark theme with good contrast |
| **File Explorer** | Neo-tree | File browser (`<leader>e`) |
| **Fuzzy Finder** | Telescope + fzf | File/text search with native performance |
| **Completion** | nvim-cmp | Autocompletion with LSP, snippets, buffer, path sources |
| **LSP** | mason + lspconfig | Language server management and configuration |
| **Snippets** | LuaSnip + friendly-snippets | Code snippets with VSCode compatibility |

## Key Bindings

### Core Bindings (`core/keymaps.lua`)
- `<space>` - Leader key
- `jk` / `jj` - Exit insert mode (jj also saves)
- `<leader>dd` / `<leader>dw` - Delete without copying to register
- `<leader>sv/sh/se/sx` - Window split management
- `<leader>to/tx/tn/tp` - Tab management

### Plugin Bindings
- `<leader>e` - Toggle Neo-tree
- `<leader>ff` - Find files (Telescope)
- `<leader>fs` - Live grep (Telescope)
- `<leader>fr` - Recent files (Telescope)
- LSP bindings automatically set on attach (gd, gr, K, etc.)

## Language Support

The configuration includes LSP servers for:
- **Go** (gopls)
- **TypeScript/JavaScript** (ts_ls)
- **Python** (pyright)
- **Lua** (lua_ls)
- **Terraform** (terraformls)
- **Zig** (zls)
- **HTML/CSS** (html, cssls)
- **Tailwind CSS** (tailwindcss)
- **Emmet** (emmet_ls)

## Formatting Tools
- **Prettier** - JavaScript/TypeScript/JSON/CSS formatting
- **Stylua** - Lua formatting
- **Black + isort** - Python formatting
- **ESLint** - JavaScript/TypeScript linting
- **Pylint** - Python linting

## Configuration Philosophy

This configuration emphasizes:
1. **Developer productivity** with strong LSP integration
2. **Fast startup** through lazy loading
3. **Consistent patterns** for maintainability
4. **Sensible defaults** that work out of the box
5. **Modern tooling** with best-in-class plugins