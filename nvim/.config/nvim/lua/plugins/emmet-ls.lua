return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      -- Setup capabilities with snippet support
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities.textDocument.completion.completionItem.snippetSupport = true

      -- Configure emmet-ls
      opts.servers = opts.servers or {}
      opts.servers.emmet_ls = {
        capabilities = capabilities,
        filetypes = {
          "css",
          "eruby",
          "html",
          "javascript",
          "javascriptreact",
          "less",
          "sass",
          "scss",
          "svelte",
          "pug",
          "typescriptreact",
          "vue",
          -- Additional filetypes from default config
          "astro",
          "htmldjango",
          "htmlangular",
        },
        init_options = {
          html = {
            options = {
              -- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
              ["bem.enabled"] = true,
            },
          },
        },
      }
      return opts
    end,
  },
}
