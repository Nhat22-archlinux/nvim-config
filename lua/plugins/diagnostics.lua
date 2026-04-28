return {
  {
    "neovim/nvim-lspconfig",
    opts = function()
      vim.o.signcolumn = "yes"
      vim.diagnostic.config({
        virtual_text = { spacing = 2 },
        signs = true,
        underline = true,
        update_in_insert = true,
        severity_sort = true,
      })
    end,
  },
}
