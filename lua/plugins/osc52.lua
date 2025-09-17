return{
  "ojroques/nvim-osc52",
  config = function ()
    vim.g.mapleader = " "
    vim.keymap.set('n', '<leader>c', require('osc52').copy_operator)
    vim.keymap.set('v', '<leader>c', require('osc52').copy_visual)
    vim.keymap.set('n', '<leader>cc', 'yy<cmd>lua require("osc52").copy_register("+")<CR>')

    -- tiện mở NvimTree
    vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>")
  
  end
}
