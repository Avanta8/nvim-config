return {
  "neovim/nvim-lspconfig",
  init = function()
    local keys = require("lazyvim.plugins.lsp.keymaps").get()
    local format = function()
      require("lazyvim.plugins.lsp.format").format({ force = true })
    end
    -- change a keymap
    -- keys[#keys + 1] = { "K", "<cmd>echo 'hello'<cr>" }
    -- disable a keymap
    -- keys[#keys + 1] = { "K", false }
    -- add a keymap
    -- keys[#keys + 1] = { "H", "<cmd>echo 'hello'<cr>" }

    keys[#keys + 1] = { "<leader>ld", vim.diagnostic.open_float, desc = "Line Diagnostics" }
    keys[#keys + 1] = { "<leader>cd", false }

    keys[#keys + 1] = { "<leader>lD", "<cmd>Telescope diagnostics<cr>", desc = "Search diagnostics" }

    keys[#keys + 1] = { "<leader>lh", vim.lsp.buf.signature_help, desc = "Signature help" }

    keys[#keys + 1] = { "<leader>ll", "<cmd>LspInfo<cr>", desc = "Lsp Info" }
    keys[#keys + 1] = { "<leader>cl", false }

    keys[#keys + 1] = { "<leader>lf", format, desc = "Format Document", has = "formatting" }
    keys[#keys + 1] = { "<leader>cf", false, has = "formatting" }

    keys[#keys + 1] = { "<leader>lf", format, desc = "Format Range", mode = "v", has = "rangeFormatting" }
    keys[#keys + 1] = { "<leader>cf", false, mode = "v", has = "rangeFormatting" }

    keys[#keys + 1] =
      { "<leader>la", vim.lsp.buf.code_action, desc = "Code Action", mode = { "n", "v" }, has = "codeAction" }
    keys[#keys + 1] = { "<leader>ca", false, mode = { "n", "v" }, has = "codeAction" }

    keys[#keys + 1] = {
      "<leader>lA",
      function()
        vim.lsp.buf.code_action({
          context = {
            only = {
              "source",
            },
            diagnostics = {},
          },
        })
      end,
      desc = "Source Action",
      has = "codeAction",
    }
    keys[#keys + 1] = { "<leader>cA", false, has = "codeAction" }

    if require("lazyvim.util").has("inc-rename.nvim") then
      keys[#keys + 1] = {
        "<leader>lr",
        function()
          local inc_rename = require("inc_rename")
          return ":" .. inc_rename.config.cmd_name .. " " .. vim.fn.expand("<cword>")
        end,
        expr = true,
        desc = "Rename",
        has = "rename",
      }
    else
      keys[#keys + 1] = { "<leader>lr", vim.lsp.buf.rename, desc = "Rename", has = "rename" }
    end
    keys[#keys + 1] = { "<leader>cr", false, has = "rename" }
  end,
}
