-- ~/.config/nvim/lua/plugins/lualine.lua (lazy.nvim)
return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    -- màu custom (tuỳ chọn) để chữ NORMAL nổi bật
    local theme = {
      normal = { a = { fg = "#1e1e2e", bg = "#89b4fa", gui = "bold" } },
      insert = { a = { fg = "#1e1e2e", bg = "#a6e3a1", gui = "bold" } },
      visual = { a = { fg = "#1e1e2e", bg = "#f38ba8", gui = "bold" } },
      replace= { a = { fg = "#1e1e2e", bg = "#fab387", gui = "bold" } },
      command= { a = { fg = "#1e1e2e", bg = "#f9e2af", gui = "bold" } },
      inactive= { a = { fg = "#cdd6f4", bg = "#313244" } },
    }

    require("lualine").setup({
      options = {
        theme = theme,              -- hoặc "auto"
        globalstatus = true,
        component_separators = { left = "", right = "" },
        section_separators   = { left = "", right = "" }, -- mũi tên
      },
      sections = {
        lualine_a = {
          { "mode",
            fmt = function(s) return string.upper(s) end, -- NORMAL/INSERT...
            padding = { left = 2, right = 2 },             -- “viên thuốc” dày
          },
        },
        lualine_b = { "branch", "diff" },
        lualine_c = { { "filename", path = 1 } },
        lualine_x = {
          {
            "diagnostics",
            sources = { "nvim_diagnostic" },
            sections = { "error", "warn", "info", "hint" },
            symbols = { error = "E:", warn = " W:", info = " I:", hint = " H:" },
            colored = true,
            update_in_insert = false,
          },
          "encoding",
          "fileformat",
          "filetype",
        },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
    })
    vim.o.showmode = false -- ẩn -- INSERT -- mặc định
  end,
}
