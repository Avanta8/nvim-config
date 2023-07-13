return {
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "catppuccin",
      colorscheme = "dracula-soft",
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      opts.options.theme = "dracula-nvim"
    end,
  },
  -- { "ggandor/leap.nvim", enabled = false },
  -- { "akinsho/toggleterm.nvim", enabled = false },
  -- { "onsails/lspkind.nvim" },
}
