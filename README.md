# My Neovim Configuration

This is a personalized Neovim configuration designed for a modern and efficient development workflow. It uses `lazy.nvim` for package management and is structured in Lua.

## Core Features

- **Plugin Management**: Handled by `lazy.nvim`.
- **LSP**: Full-featured Language Server Protocol support for diagnostics, code actions, and more.
- **Completion**: Autocompletion powered by `nvim-cmp`.
- **File Navigation**: A file tree with `nvim-tree` and fuzzy finding with `telescope.nvim`.
- **UI Enhancements**: A clean theme, status line, buffer line, and improved notifications.
- **Formatting**: Automatic code formatting on save.

---

## Plugins

Here is a list of the plugins used in this configuration:

| Plugin | Description |
| --- | --- |
| **`catppuccin/nvim`** | A soothing pastel theme. |
| **`nvim-lualine/lualine.nvim`** | A fast and feature-rich status line. |
| **`lukas-reineke/indent-blankline.nvim`** | Adds indentation guides to your code. |
| **`nvim-tree/nvim-tree.lua`** | A file explorer for navigating the filesystem. |
| **`tpope/vim-commentary`** | A utility for easily commenting out lines of code. |
| **`tpope/vim-surround`** | A tool for managing "surroundings" like parentheses, brackets, and quotes. |
| **`lewis6991/gitsigns.nvim`** | Adds Git decorations (add, change, delete) to the sign column. |
| **`windwp/nvim-autopairs`** | Automatically closes pairs like `()`, `[]`, `{}`, `""`. |
| **`rmagatti/auto-session`** | Automatically saves and restores your editing sessions. |
| **`akinsho/bufferline.nvim`** | A stylish, tab-like line for displaying open buffers. |
| **`hrsh7th/nvim-cmp`** | A powerful and extensible autocompletion engine. |
| **`stevearc/conform.nvim`** | A lightweight and opinionated code formatter. |
| **`williamboman/mason.nvim`** | A package manager for LSP servers, DAP servers, linters, and formatters. |
| **`neovim/nvim-lspconfig`** | A collection of default configurations for the built-in LSP client. |
| **`phaazon/hop.nvim`** | A motion plugin that allows you to jump to any word in the buffer. |
| **`folke/noice.nvim`** | A modern UI for Neovim's messages, commands, and notifications. |
| **`nvim-telescope/telescope.nvim`** | A highly extensible fuzzy finder for files, buffers, grep results, and more. |
| **`nvim-treesitter/nvim-treesitter`** | Provides advanced syntax highlighting and code parsing. |
| **`windwp/nvim-ts-autotag`** | Automatically closes and renames HTML/XML tags. |
| **`Exafunction/windsurf.nvim` (Codeium)** | Provides AI-powered code completion and chat functionality. |

---

## Keymaps

The leader key is set to `Space`.

### Navigation

| Key | Mode | Action |
| --- | --- | --- |
| `<C-h>` | Normal | Move to the left window |
| `<C-j>` | Normal | Move to the down window |
| `<C-k>` | Normal | Move to the up window |
| `<C-l>` | Normal | Move to the right window |
| `<S-j>` | Normal | Move 5 lines down |
| `<S-k>` | Normal | Move 5 lines up |

### File Management (Telescope & NvimTree)

| Key | Mode | Action |
| --- | --- | --- |
| `<leader>e` | Normal | Toggle NvimTree file explorer |
| `<leader>f` | Normal | Find current file in NvimTree |
| `<leader>r` | Normal | Refresh NvimTree |
| `<leader>ff` | Normal | **Telescope**: Find files |
| `<leader>fg` | Normal | **Telescope**: Live grep (search text in project) |
| `<leader>fb` | Normal | **Telescope**: Show open buffers |

### Bufferline (Tabs)

| Key | Mode | Action |
| --- | --- | --- |
| `<S-h>` | Normal | Go to the previous buffer |
| `<S-l>` | Normal | Go to the next buffer |
| `<leader><S-h>` | Normal | Move the current buffer to the left |
| `<leader><S-l>` | Normal | Move the current buffer to the right |
| `<leader>1-9` | Normal | Go to buffer 1-9 |
| `<leader>q` | Normal | Pick a buffer to close |
| `<leader><leader>c` | Normal | Close current buffer |
| `<leader><leader>C` | Normal | Pick a buffer to close |
| `<leader><leader>b` | Normal | Pick a buffer to navigate to |

### Editing

| Key | Mode | Action |
| --- | --- | --- |
| `jk` | Insert | Exit insert mode |
| `<` | Visual | Un-indent selected lines |
| `>` | Visual | Indent selected lines |
| `<leader>y` | Normal/Visual | Copy to system clipboard |
| `<leader>p` | Normal | Paste from system clipboard |
| `<leader><leader>s` | Normal | Save the current file (`:w`) |
| `<leader>s` | Normal | Replace all occurrences of the word under the cursor |

### LSP (Language Server Protocol)

| Key | Mode | Action |
| --- | --- | --- |
| `gd` | Normal | Go to definition |
| `gr` | Normal | Go to references |
| `<C-k>` | Normal | Show hover documentation |
| `gh` | Normal | Show line diagnostics (float) |
| `[e` | Normal | Go to the previous diagnostic |
| `]e` | Normal | Go to the next diagnostic |
| `<leader>rn` | Normal | Rename symbol |
| `<leader>ca` | Normal | Show code actions |
| `<leader>ld` | Normal | Show all buffer diagnostics |

### Motion (Hop)

| Key | Mode | Action |
| --- | --- | --- |
| `<leader><leader>j` | Normal/Visual | **Hop**: Jump to a line below the cursor |
| `<leader><leader>k` | Normal/Visual | **Hop**: Jump to a line above the cursor |
| `<leader><leader>w` | Normal | **Hop**: Jump to any word in the visible buffer |

### Session Management (AutoSession)

| Key | Mode | Action |
| --- | --- | --- |
| `<leader>wr` | Normal | Restore the last session for the current directory |
| `<leader>ws` | Normal | Save the current session |
| `<leader>ls` | Normal | Search for a session to restore |

### Miscellaneous

| Key | Mode | Action |
| --- | --- | --- |
| `<leader>u` | Normal | Toggle Undotree (history viewer) |