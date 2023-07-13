return {
  {
    "folke/flash.nvim",
    opts = {
      label = {
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
  },
}
