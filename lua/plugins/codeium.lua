return {
  {
  "Exafunction/windsurf.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "hrsh7th/nvim-cmp",
  },
  config = function()
    require("codeium").setup({
      virtual_text = {
        enabled = true,               -- bật ghost text (inline)
        idle_delay = 100,             -- delay 100ms sau khi dừng gõ
        default_filetype_enabled = true,
        filetypes = {                 -- bật cho các ngôn ngữ này
          lua = true,
          python = true,
          javascript = true,
          typescript = true,
        },
        map_keys = true,
        -- ❌ xoá accept_fallback = "\t", để không dính Tab nữa
      },
      enable_cmp_source = true,       -- bật Codeium trong popup của nvim-cmp
      keymap = {
        accept = "<C-l>",             -- Ctrl+l để accept gợi ý
        next = "<C-j>",               -- Ctrl+j để chuyển gợi ý kế
        prev = "<C-k>",               -- Ctrl+k để quay lại gợi ý trước
        dismiss = "<C-x>",            -- Ctrl+x để bỏ gợi ý
      },
    })
  end,
}

}
