-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Python to use
vim.g.python3_host_prog = "/Users/user/.config/nvim/env/bin/python"

-- I never use Ruby/Perl so disable them
vim.g.loaded_ruby_provider = 0
vim.g.loaded_perl_provider = 0
