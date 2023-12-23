local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- fr shows Telescope recent files
keymap.set("n", "fr", ":Telescope oldfiles<CR>", opts)

-- ffg shows Telescope ~/Desktop/gits files
keymap.set(
  "n",
  "ffg",
  ":lua require('telescope.builtin').find_files({ cwd = '~/Desktop/gits', hidden = true, file_ignore_patterns = { 'env/', 'node_modules/', '.git/', '__pycache__' } })<CR>",
  opts
)

-- ffd shows Telescope ~/.config files
keymap.set("n", "ffd", ":lua require('telescope.builtin').find_files({ cwd = '~/.config', hidden = true })<CR>", opts)

-- ffz shows Telescope ~/Documents/Obsidian/base_vault/ files
keymap.set(
  "n",
  "ffz",
  ":lua require('telescope.builtin').find_files({ cwd = '~/Documents/Obsidian/base_vault/', hidden = true })<CR>",
  opts
)
