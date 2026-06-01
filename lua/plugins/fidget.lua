return {
  "j-hui/fidget.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    progress = {
      display = {
        done_ttl = 5,
        progress_ttl = math.huge,
      },
    },
    notification = {
      window = {
        winblend = 0,
      },
    },
  },
}
