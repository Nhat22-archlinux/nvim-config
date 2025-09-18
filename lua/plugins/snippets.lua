return {
  {
  "L3MON4D3/LuaSnip",
  dependencies = {
    "rafamadriz/friendly-snippets", -- bộ snippet có sẵn
  },
  config = function()
    local luasnip = require("luasnip")

    -- Load snippet VSCode (friendly-snippets)
    require("luasnip.loaders.from_vscode").lazy_load()

    -- Load snippet tự viết
    require("luasnip.loaders.from_lua").lazy_load({
      paths = "~/.config/nvim/lua/snippets",
    })
  end,
}

}
