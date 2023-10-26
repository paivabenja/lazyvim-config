-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- LSP Floating diagnostics
vim.keymap.set("n", "<leader>l", function()
  vim.diagnostic.open_float({ border = "rounded" })
end)

-- Disable moving lines up/down
vim.keymap.del({ "n", "i", "v" }, "<A-k>")
vim.keymap.del({ "n", "i", "v" }, "<A-j>")
vim.keymap.set({ "n", "i", "v" }, "<Esc>j", "")
vim.keymap.set({ "n", "i", "v" }, "<Esc>k", "")
vim.keymap.del({ "n", "i", "v" }, "<Esc>j")
vim.keymap.del({ "n", "i", "v" }, "<Esc>k")

-- Nvim Tmux Navigation
local nvim_tmux_nav = require("nvim-tmux-navigation")
vim.keymap.set("n", "<A-h>", nvim_tmux_nav.NvimTmuxNavigateLeft)
vim.keymap.set("n", "<A-j>", nvim_tmux_nav.NvimTmuxNavigateDown)
vim.keymap.set("n", "<A-k>", nvim_tmux_nav.NvimTmuxNavigateUp)
vim.keymap.set("n", "<A-l>", nvim_tmux_nav.NvimTmuxNavigateRight)
vim.keymap.set("n", "<A-\\>", nvim_tmux_nav.NvimTmuxNavigateLastActive)
vim.keymap.set("n", "<A-Space>", nvim_tmux_nav.NvimTmuxNavigateNext)
