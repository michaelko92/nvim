return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile"},
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    { "antosha417/nvim-lsp-file-operations", config = true},
  },

  config = function()
    local lspconfig = require("lspconfig")

    local cmp_nvim_lsp = require("cmp_nvim_lsp")

    local keymap = vim.keymap
    local opts = { noremap = true, silent = true}
    local on_attach = function(client, bufnr)
      opts.buffer = bufnr
      opts.desc = "Show LSP references"
      keymap.set("n", "<leader>lr", "<cmd>Telescope lsp_references<CR>", opts)

      opts.desc = "Go to declaration"
      keymap.set("n", "<leader>lD", vim.lsp.buf.declaration, opts)

      opts.desc = "Show LSP definitons"
      keymap.set("n", "<leader>ld", "<cmd>Telescope lsp_definitions<CR>", opts)

      opts.desc = "Show LSP implementations"
      keymap.set("n", "<leader>li", "<cmd>Telescope lsp_implementations<CR>", opts)

      opts.desc = "Show LSP type definitions"
      keymap.set("n", "<leader>lt", "<cmd>Telescope lsp_type_definitions<CR>", opts)

      opts.desc = "See available code actions"
      keymap.set("n", "<leader>lc", vim.lsp.buf.code_actions, opts)

      opts.desc = "Smart rename"
      keymap.set("n", "<leader>ln", vim.lsp.buf.rename, opts)

      opts.desc = "Show buffer diagnostics"
      keymap.set("n", "<leader>lbD", "<cmd>Telescope diagnostics bufnr=0<CR>", opts)

      opts.desc = "Show line diagnostics"
      keymap.set("n", "<leader>lbd", vim.diagnostic.open_float, opts)

      opts.desc = "Go to previous diagnostic"
      keymap.set("n", "<leader>[d", vim.diagnostic.goto_prev, opts)

      opts.desc = "Show documentation for what is under the cursor"
      keymap.set("n", "<leader>lK", vim.lsp.buf.hover, opts)

      opts.desc = "Show LSP signature help"
      keymap.set("n", "<leader>lh", vim.lsp.buf.signature_help, opts)

      opts.desc = "Restart LSP"
      keymap.set("n", "<leader>ls", ":LspRestart<CR>", opts)

      vim.api.nvim_create_autocmd("CursorHold", {
      buffer = bufnr,
      callback = function()
      local opts = {
          focusable = false,
          close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost"},
          border = "rounded",
          source = "always",
          prefix = " ",
          scope = "cursor",
        }
    vim.diagnostic.open_float(nil, opts)
      end,
    })
    end
    local capabilities = cmp_nvim_lsp.default_capabilities()
  local signs = {Error = " ", Warn = " ", hint = " ", Info = " "}
    for type, icon in pairs(signs) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
    end

    lspconfig["html"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })

    lspconfig["tsserver"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })

    lspconfig["cssls"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })

    lspconfig["tailwindcss"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
})

    lspconfig["svelte"].setup({
      capabilities = capabilities,
      on_attach = function(client, bufnr)
      on_attach(client, bufnr)

      vim.api.nvim_create_autocmd("BufWritePost", {
          pattern = {"*.js", "*.ts" },
          callback = function(ctx)
          if client.name == "svelete" then
            client.notify("$/onDidChangeTsOrJsFile", { uri = ctx.file})
            end
          end,
        })
      end,
    })

    lspconfig["prismals"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })

    lspconfig["graphql"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
      filetypes = {"graphql", "gql", "svelte", "typescriptreact", "javascriptreact"},
    })

    lspconfig["emmet_ls"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
      filetypes = {"html", "typescriptreact", "javascriptreact", "css", "sass", "less", "svelte"},
    })

    lspconfig["pyright"].setup({
      capabilities = capabilities,
  on_attach = function(client, bufnr)
    on_attach(client, bufnr)
    vim.bo[bufnr].tabstop = 4
    vim.bo[bufnr].shiftwidth = 4
    vim.bo[bufnr].expandtab = true
  end,
    })


    lspconfig["lua_ls"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
      settings = {
        Lua = {
          diagnostics = {
            globals = {"vim"},
          },
          workspace = {
            library = {
              [vim.fn.expand("$VIMRUNTIME/lua")] = true,
              [vim.fn.stdpath("config") .. "/lua"] = true,
            },
          },
        },
      },
    })
  end,
  }
