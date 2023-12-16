return {
  "L3MON4D3/LuaSnip",
  config = function()
    require("luasnip.loaders.from_lua").lazy_load({ paths = "./lua/snippets" })
    require("luasnip.loaders.from_vscode").lazy_load()
    require("luasnip").filetype_extend("typescriptreact", { "html", "typescript" })
    require("luasnip").filetype_extend("javascriptreact", { "html", "javascript" })
  end,
}
