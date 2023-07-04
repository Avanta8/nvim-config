-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- local function map(mode, lhs, rhs, opts)
--   local keys = require("lazy.core.handler").handlers.keys
--   ---@cast keys LazyKeysHandler
--   -- do not create the keymap if a lazy keys handler exists
--   if not keys.active[keys.parse({ lhs, mode = mode }).id] then
--     opts = opts or {}
--     opts.silent = opts.silent ~= false
--     if opts.remap and not vim.g.vscode then
--       opts.remap = nil
--     end
--     vim.keymap.set(mode, lhs, rhs, opts)
--   end
-- end

vim.keymap.set("n", "<leader>h", "<cmd>noh<cr><esc>", { desc = "Clear hlsearch" })

vim.keymap.set("n", "<leader>cl", "<cmd>Lazy<cr>", { desc = "Lazy" })
vim.keymap.set("n", "<leader>l", "<nop>", { desc = "Lazy" })

vim.keymap.set("n", "<c-_>", "gcc", { desc = "Comment line", remap = true })
vim.keymap.set("v", "<c-_>", "gcgv", { desc = "Comment selection", remap = true })

vim.keymap.set("i", "<c-h>", "<c-w>")
vim.keymap.set("i", "<c-del>", "<space><esc>ce")
