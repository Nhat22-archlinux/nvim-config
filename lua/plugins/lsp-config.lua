return {
  -- Mason: quản lý tool/LSP binaries
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },

  -- Mason-lspconfig: bridge giữa mason và lspconfig
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      -- Tự cài những server bạn liệt kê bên dưới
      ensure_installed = {
        "ts_ls",
        "solargraph",
        "html",
        "lua_ls",
        "pyright",
        "clangd",
        "jdtls",
        "texlab", --latex 
      },
      automatic_installation = true,
    },
  },

  -- LSPConfig: cấu hình và enable LSP
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      -- cmp-nvim-lsp (nếu bạn có nvim-cmp)
      local ok_cmp, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      if ok_cmp then
        capabilities = cmp_nvim_lsp.default_capabilities(capabilities)
      end

      -- Khai báo cấu hình cho từng LSP (API nvim 0.11+)
      vim.lsp.config("ts_ls", { capabilities = capabilities })
      vim.lsp.config("solargraph", { capabilities = capabilities })
      vim.lsp.config("html", { capabilities = capabilities })
      -- thêm texlab ở đây
      vim.lsp.config("texlab", {
        capabilities = capabilities,
      })

      vim.lsp.config("lua_ls", {
        capabilities = capabilities,
        settings = {
          Lua = {
            diagnostics = { globals = { "vim" } },
          },
        },
      })
      vim.lsp.config("pyright", { capabilities = capabilities })
      vim.lsp.config("clangd", { capabilities = capabilities })
      vim.lsp.config("jdtls", { capabilities = capabilities })

      -- Bật LSP
      vim.lsp.enable({
        "ts_ls",
        "solargraph",
        "html",
        "lua_ls",
        "pyright",
        "clangd",
        "jdtls",
        
      })
      

      -- Keymaps: nên map theo LspAttach để chỉ hoạt động khi LSP attach vào buffer
      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
          local opts = { buffer = args.buf }

          vim.keymap.set("n", "K", vim.lsp.buf.hover, vim.tbl_extend("force", opts, { desc = "LSP Hover" }))
          vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, vim.tbl_extend("force", opts, { desc = "Go to Definition" }))
          vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, vim.tbl_extend("force", opts, { desc = "Find References" }))
          vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, vim.tbl_extend("force", opts, { desc = "Code Action" }))
          vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, vim.tbl_extend("force", opts, { desc = "Rename Symbol" }))
        end,
      })
    end,
  },
}
