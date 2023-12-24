local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- ###############################
-- FZF / Find Files Keymaps
-- ###############################

-- <Leader>ffg shows Telescope ~/Desktop/gits files
keymap.set(
  "n",
  "<Leader>ffg",
  ":lua require('telescope.builtin').find_files({ cwd = '~/Desktop/gits', hidden = true, file_ignore_patterns = { 'env/', 'node_modules/', '.git/', '__pycache__' } })<CR>",
  opts
)

-- <Leader>ffc shows Telescope ~/.config files
keymap.set(
  "n",
  "<Leader>ffc",
  ":lua require('telescope.builtin').find_files({ cwd = '~/.config', hidden = true, file_ignore_patterns = { 'env/'} })<CR>",
  opts
)

-- <Leader>ffo shows Telescope ~/Documents/Obsidian/base_vault/ files
keymap.set(
  "n",
  "<Leader>ffo",
  ":lua require('telescope.builtin').find_files({ cwd = '~/Documents/Obsidian/base_vault/', hidden = true })<CR>",
  opts
)

-- ###############################
-- RG / Live Grep Keymaps
-- ###############################

-- <Leader>rgg shows Telescope ~/Desktop/gits files
keymap.set(
  "n",
  "<Leader>rgg",
  ":lua require('telescope.builtin').live_grep({ cwd = '~/Desktop/gits', hidden = true, file_ignore_patterns = { 'env/', 'node_modules/', '.git/', '__pycache__' } })<CR>",
  opts
)

-- <Leader>rgc shows Telescope ~/.config files
keymap.set(
  "n",
  "<Leader>rgc",
  ":lua require('telescope.builtin').live_grep({ cwd = '~/.config', hidden = true, file_ignore_patterns = { 'env/'} })<CR>",
  opts
)

-- <Leader>rgo shows Telescope ~/Documents/Obsidian/base_vault/ files
keymap.set(
  "n",
  "<Leader>rgo",
  ":lua require('telescope.builtin').live_grep({ cwd = '~/Documents/Obsidian/base_vault/', hidden = true })<CR>",
  opts
)
