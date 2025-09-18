return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local function my_on_attach(bufnr)
      local api = require("nvim-tree.api")

      -- giữ keymap mặc định
      api.config.mappings.default_on_attach(bufnr)

      -- thêm map t → mở file trong tab mới
      vim.keymap.set("n", "t", api.node.open.tab,
        { buffer = bufnr, noremap = true, silent = true, desc = "Open in new tab" })
    end

    require("nvim-tree").setup({
      on_attach = my_on_attach,
      update_focused_file = {
        enable = true,
        update_root = { enable = false },
      },
    })

    vim.opt.showtabline = 2 -- luôn hiển thị tabline
    vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
    -- Resize cửa sổ bằng Shift + Arrow
    vim.keymap.set("n", "<S-Up>", ":resize +2<CR>", { noremap = true, silent = true, desc = "Increase window height" })
    vim.keymap.set("n", "<S-Down>", ":resize -2<CR>", { noremap = true, silent = true, desc = "Decrease window height" })
    vim.keymap.set("n", "<S-Left>", ":vertical resize -2<CR>",
      { noremap = true, silent = true, desc = "Decrease window width" })
    vim.keymap.set("n", "<S-Right>", ":vertical resize +2<CR>",
      { noremap = true, silent = true, desc = "Increase window width" })

    -- Đóng buffer trong ô hiện tại
    vim.keymap.set("n", "<C-q>", ":bd<CR>", { noremap = true, silent = true, desc = "Close buffer" })

    -- Chia dọc
    vim.keymap.set("n", "N", ":vsp<CR>", { noremap = true, silent = true, desc = "Vertical split" })

    -- Chia ngang
    vim.keymap.set("n", "M", ":sp<CR>", { noremap = true, silent = true, desc = "Horizontal split" })
    vim.keymap.set("n", "<leader>t", ":belowright 10sp | terminal<CR>", { noremap = true, silent = true })
  end,
}
