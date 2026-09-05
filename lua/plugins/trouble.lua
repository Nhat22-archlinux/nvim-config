return {
  {
    "folke/trouble.nvim",
    cmd = "Trouble",
    keys = {
      {
        "<leader>xx",
        "<cmd>Trouble diagnostics toggle<cr>",
        desc = "Diagnostics: workspace",
      },
      {
        "<leader>xd",
        "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
        desc = "Diagnostics: current buffer",
      },
      {
        "<leader>xq",
        "<cmd>Trouble qflist toggle<cr>",
        desc = "Diagnostics: quickfix",
      },
      {
        "]d",
        function()
          vim.diagnostic.jump({ count = 1, float = true })
        end,
        desc = "Next diagnostic",
      },
      {
        "[d",
        function()
          vim.diagnostic.jump({ count = -1, float = true })
        end,
        desc = "Previous diagnostic",
      },
    },
    opts = {
      focus = true,
      auto_close = false,
      auto_preview = true,
      warn_no_results = false,
      open_no_results = true,
      modes = {
        diagnostics = {
          groups = {
            { "filename", format = "{file_icon} {basename} {count}" },
          },
        },
      },
    },
  },
}
