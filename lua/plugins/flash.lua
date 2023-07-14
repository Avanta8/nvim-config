return {
  {
    "folke/flash.nvim",
    opts = {
      label = {
        uppercase = false,
        after = false,
        before = true,
      },
      highlight = {
        backdrop = false,
      },
      modes = {
        search = {
          enabled = false,
        },
        char = {
          -- jump_labels = true,
          multi_line = false,
          char_actions = function(motion)
            return {
              [";"] = "right", -- set to `right` to always go right
              [","] = "left", -- set to `left` to always go left
              -- jump2d style: same case goes next, opposite case goes prev
              [motion] = "next",
              [motion:match("%l") and motion:upper() or motion:lower()] = "prev",
            }
          end,
          highlight = {
            backdrop = false,
          },
        },
      },
    },
    -- stylua: ignore
    keys = {
      { "s", mode = { "n", "x", "o" }, false },
      { "S", mode = { "n", "o", "x" }, false },
      { "<leader>a", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
      { "<leader>A", mode = { "n", "o", "x" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
    },
  },
}
