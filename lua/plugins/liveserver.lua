return {
  {
    "nvim-lua/plenary.nvim", -- plugin có thật (có sẵn nhiều khi), dùng làm chỗ gắn config
    config = function()
      -- Bật live-server
      vim.keymap.set("n", "<leader>ls", function()
        vim.cmd("!live-server --port=5500 . & disown")
        print("🚀 Live Server started at http://localhost:5500")
      end, { desc = "Start Live Server" })

      -- Tắt live-server
      vim.keymap.set("n", "<leader>lx", function()
        vim.cmd("!fuser -k 5500/tcp")
        print("🛑 Live Server stopped on port 5500")
      end, { desc = "Stop Live Server" })
    end,
  }
}

