return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  config = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
    local wk = require("which-key")
    wk.add({
      { "<leader>f", group = "File"},
      { "<leader>g", group = "Git"},
      { "<leader>l", group = "LSP"},
      { "<leader>lb", group = "Diagnostics"},
      { "<leader>m", group = "Format"},
      { "<leader>s", group = "Split"},
      { "<leader>t", group = "Tab"},
    })
  end,
  opts = {
    -- your config comes here
  }
}
