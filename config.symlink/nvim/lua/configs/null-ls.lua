local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  b.formatting.deno_fmt,                                                    -- choosed deno for ts/js files cuz its very fast!
  b.formatting.prettier.with { filetypes = { "html", "markdown", "css" } }, -- so prettier works only on these filetypes
  b.formatting.jq.with { filetypes = { "json" } },                          -- jq for json files

  -- golang
  b.formatting.goimports,
  b.formatting.goimports_reviser,
  b.formatting.mdformat,
  b.code_actions.gomodifytags,
  b.code_actions.impl,

  -- Lua
  b.formatting.stylua,

  -- cpp
  b.formatting.clang_format,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
