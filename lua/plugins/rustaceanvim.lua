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
          if client.name == "rust-analyzer" and vim.fn.has("nvim-0.10") then
            vim.lsp.inlay_hint.enable(bufnr, true)
          end
        end,
      },
    },
  },
}
