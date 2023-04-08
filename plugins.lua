local plugins = {
  ["nvim-treesitter/nvim-treesitter"] = {
     opts = {
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
    opts = {
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
--     dependencies = {
--       "jose-elias-alvarez/null-ls.nvim",
--       config = function()
--         require "custom.configs.null-ls"
--       end,
--     },
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
