return {
  "nvim-telescope/telescope-file-browser.nvim",
  dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
  config = function()
    local telescope = require("telescope")
    telescope.setup({})
    require("telescope").load_extension("file_browser")
    local keymap = vim.keymap
    keymap.set("n", "<space>fb", ":Telescope file_browser path=%:p:h select_buffer=true<CR>", {desc = "File Browser"})
  end,
}
