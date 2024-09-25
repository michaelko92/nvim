local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- Check if lazy.nvim is already installed, and if not, install it
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git", -- Repository for Lazy.nvim
    "--branch=stable", -- Latest stable release
    lazypath
  })
end

-- Prepend lazy.nvim path to the runtime path
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

-- Setup lazy.nvim with a basic configuration
require("lazy").setup({ { import = "moneymike.plugins"}, { import = "moneymike.plugins.lsp" } }, {
  change_detection = {
    notify = false,
  },
})
