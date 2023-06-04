# Neovim Configuration

Welcome to my Neovim configuration! 

I use it with [NvChad](https://github.com/NvChad/NvChad).

Here are the key components:

## Null-ls

I utilize the `null-ls` plugin for formatting and linting various file types. Here are the enabled sources:

- `deno_fmt`: Formatting for TypeScript/JavaScript files using Deno.
- `prettier`: Formatting for HTML, Markdown, and CSS files using Prettier.
- `eslint`: Linting for JavaScript and TypeScript files using ESLint.
- `stylua`: Formatting for Lua files.
- `clang_format`: Formatting for C++ files.
- `cpplint`: Linting for C++ files using `cpplint`.
- `black`: Formatting for Python files using Black.
- `isort`: Sorting imports in Python files.

## Plugins

I use several plugins to enhance the functionality and features of Neovim. Here are some notable ones:

- [copilot.vim](https://github.com/github/copilot.vim): Integration with GitHub Copilot.
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig): Configuration for Neovim's built-in Language Server Protocol (LSP) client.
- [null-ls.nvim](https://github.com/jose-elias-alvarez/null-ls.nvim): Dependency for `nvim-lspconfig` to enable formatting and linting with `null-ls`.
- [mason.nvim](https://github.com/williamboman/mason.nvim): Improved snippet insertion.
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter): Syntax highlighting and parsing.
- [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua): File explorer sidebar.

Additionally, I use the [better-escape.nvim](https://github.com/max397574/better-escape.nvim) plugin to enhance the escape key behavior.

## LSP Servers

I have configured Neovim to use the following Language Server Protocol (LSP) servers for different languages:

- `html`: LSP server for HTML files.
- `cssls`: LSP server for CSS files.
- `tsserver`: LSP server for TypeScript files.
- `clangd`: LSP server for C/C++ files.
- `pyright`: LSP server for Python files.
