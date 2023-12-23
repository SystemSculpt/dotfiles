# ########################
# GENERAL SETTINGS
# ########################

# Neovim as default editor
export EDITOR="nvim"

# Sources 
source "$HOME/.config/zsh/aliases.zsh"
source "$HOME/.config/zsh/theme.zsh"
source "$HOME/.config/openai/openai.zsh"

# Add local bin to path
export PATH="$HOME/.local/bin:$PATH"

# RBENV initialization to maintain Ruby versions
eval "$(rbenv init -)"

# ########################
# MACOS SETTINGS
# ########################

# Show hidden files and folders in Finder
defaults write com.apple.finder AppleShowAllFiles true

# Show path bar in Finder
defaults write com.apple.finder ShowPathbar true

# Don't create .DS_Store files anywhere
defaults write com.apple.desktopservices DSDontWriteNetworkStores true

