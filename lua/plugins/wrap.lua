return {
  {
    "nvim-lua/plenary.nvim",  -- plugin "ảo" để lazy load được
    config = function()
      vim.opt.wrap = true            -- bật wrap
      vim.opt.linebreak = true       -- không cắt chữ giữa chừng
      vim.opt.breakindent = true     -- giữ indent khi wrap
    end,
  },
}

