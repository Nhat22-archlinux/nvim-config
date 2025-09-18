return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      -- Khai báo server
      vim.lsp.config.ts_ls = { capabilities = capabilities }
      vim.lsp.config.solargraph = { capabilities = capabilities }
      vim.lsp.config.html = { capabilities = capabilities }
      vim.lsp.config.lua_ls = { capabilities = capabilities }
      vim.lsp.config.pyright = { capabilities = capabilities }
      vim.lsp.config.clangd = { capabilities = capabilities }
      vim.lsp.config.jdtls = { capabilities = capabilities }

      -- Tự động start tất cả LSP đã khai báo
      for name, config in pairs(vim.lsp.config) do
        vim.lsp.start(config)
      end

      -- Keymaps
      vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "LSP Hover" })
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Go to Definition" })
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { desc = "Find References" })
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Action" })
    end,
  },
}

