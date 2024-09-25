return {
  "mfussenegger/nvim-lint",
  event = {
    "BufReadPre",
    "BufNewFile"
  },
  config = function()
    local lint = require("lint")

    lint.linters_by_ft = {
      javascript = {"eslict_d"},
      typescript = {"eslict_d"},
      javascriptreact = {"eslict_d"},
      typescriptreact = {"eslict_d"},
      svelte = {"eslict_d"},
      python = {"pylint"},
    }

    local lint_augroup = vim.api.nvim_create_augroup("lint", {clear = true})

    vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave"}, {
      group = lint_augroup,
      callback = function()
        lint.try_lint()
      end,
    })

    vim.keymap.set("n", "<leader>ml", function()
      lint.try_lint()
    end, {desc = "Trigger linting for current file" })

    local pylint = lint.linters.pylint
    pylint.args = {
      '--error-only',
      '--disable=C,R'
    }
  end,
}
