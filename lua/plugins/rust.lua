return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      servers = {
        --- @class lspconfig.options.rust_analyzer,
        rust_analyzer = {
          --- @class lspconfig.settings.rust_analyzer,
          settings = {
            ["rust-analyzer"] = {
              checkOnSave = true,
              check = {
                features = "all",
                command = "clippy",
                extraArgs = { "--no-deps" },
              },
              typing = {
                autoClosingAngleBrackets = {
                  -- Doesn't seem to do anything sadly.
                  enable = true,
                },
              },
              -- inlayHints = {
              --   discriminantHints = {
              --     enable = "always",
              --   },
              -- },
            },
          },
        },
      },
    },
  },
}
