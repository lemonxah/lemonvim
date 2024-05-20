return {
  {
    "mrcjkb/rustaceanvim",
    version = "^4", -- Recommended
    ft = { "rust" },
    ---@type RustaceanOpts
    opts = {
      ---@type RustaceanLspClientOpts
      server = {
        default_settings = {
          ["rust-analyzer"] = {
            files = {
              excludeDirs = { ".direnv", "result" },
            },
            imports = {
              granularity = { group = "module" },
              prefix = "self",
              prefer_prelude = true,
            },
          },
        },
        on_attach = function(client, bufnr)
          vim.lsp.inlay_hint.enable(true)
        end,
      },
    },
  },
}
