-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- #############################
-- GENERAL KEYMAPS
-- #############################

-- Buffer management
keymap.set("n", "fW", ":w!<CR>", opts)
keymap.set("n", "fw", ":w<CR>", opts)
keymap.set("n", "fq", ":q<CR>", opts)
keymap.set("n", "fQ", ":q!<CR>", opts)
keymap.set("n", "fk", ":bd<CR>", opts)

-- Window management
keymap.set("n", "<leader>wl", "<C-w>l", { desc = "Move to window on the right" })
keymap.set("n", "<leader>wj", "<C-w>j", { desc = "Move to window below" })
keymap.set("n", "<leader>wk", "<C-w>k", { desc = "Move to window above" })
keymap.set("n", "<leader>wh", "<C-w>h", { desc = "Move to window on the left" })

-- #############################
-- REWRITING LAZYVIM KEYMAPS
-- #############################

-- Resetting normal mode s to the default "delete character under cursor" behavior
keymap.set("n", "s", "s")
keymap.set("v", "s", "s")

-- #############################
-- SOURCING OTHER KEYMAPS
-- #############################

require("config.telescope_keymaps")
