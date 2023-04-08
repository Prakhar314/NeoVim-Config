local plugins = {
  ["nvim-treesitter/nvim-treesitter"] = {
     override_options = {
       ensure_installed = {
         -- defaults 
         "vim",
         "lua",
         -- web dev 
         "html",
         "css",
         "javascript",
         "typescript",
         "tsx",
         "json",
         -- "vue", "svelte",
         -- low level
         "c",
         "cpp",
         "rust",
         "python",
         "sql"
       },
     },
   },
  ["williamboman/mason.nvim"] = {
    override_options = {
       ensure_installed = {
         "lua-language-server",
         "html-lsp",
         "prettier",
         "stylua",
         "clangd",
         "clang-format",
         "sqlfmt"
       },
     },
   },
  ["neovim/nvim-lspconfig"] = {
     config = function()
        require "plugins.configs.lspconfig"
        require "custom.configs.lspconfig"
     end,
  },
  ["jose-elias-alvarez/null-ls.nvim"] = {
      after = "nvim-lspconfig",
      config = function()
              require("custom.configs.null-ls")
      end,
  },
}

return plugins
