local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  b.formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!
  b.formatting.prettier.with { filetypes = { "html", "markdown", "css" } }, -- so prettier works only on these filetypes
  b.diagnostics.eslint.with { filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" } }, -- eslint for js/ts

  -- Lua
  b.formatting.stylua,

  -- cpp
  b.formatting.clang_format,
  b.diagnostics.cpplint.with {
    args = { "--filter=-legal", "$FILENAME" },
  },

  -- python
  b.formatting.black.with {
    extra_args = { "--line-length=120" },
  },
  b.formatting.isort,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
