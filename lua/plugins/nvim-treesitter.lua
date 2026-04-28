return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = { "BufReadPost", "BufNewFile" },

  config = function()
    local DISABLE_HIGHLIGHT_THRESHOLD = 30000

    local ok, configs = pcall(require, "nvim-treesitter.configs")
    if not ok then
      return
    end

    configs.setup({
      ensure_installed = {
        "bash",
        "c",
        "cpp",
        "css",
        "go",
        "html",
        "javascript",
        "lua",
        "python",
        "ruby",
        "rust",
        "sql",
        "typescript",
        "yaml",
        "vim",
        "vimdoc",
        "query",
        "markdown",
        "markdown_inline",
      },

      auto_install = true,
      sync_install = false,

      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
        disable = function(lang, bufnr)
          return vim.api.nvim_buf_line_count(bufnr or 0) > DISABLE_HIGHLIGHT_THRESHOLD
        end,
      },
    })
  end,
}
