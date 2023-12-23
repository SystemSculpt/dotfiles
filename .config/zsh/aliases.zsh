# ------------------------
# General System Aliases
# ------------------------

# Refresh Zsh Configuration
alias rfz="echo 'ReFreshing Zshrc...' && source ~/.zshrc && echo '.zshrc refreshed.'"

# ------------------------
# Python Development Aliases
# ------------------------

# Environment Management
alias meh="echo 'Making Environment Here...' && python3 -m venv env"  # Create Python virtual environment
alias ece="echo 'Entering Current Environment...' && source env/bin/activate"  # Activate virtual environment
alias de="echo 'Deactivating Environment...' && deactivate"  # Deactivate virtual environment
alias pir="echo 'Pip Installing Requirements...' && pip3 install -r requirements.txt"  # Install requirements from file
alias rpm="echo 'Running Python Main...' && python3 -m main"  # Run Python main module

# ------------------------
# Networking Aliases
# ------------------------

# Get External IP Address
alias myip='curl http://ipecho.net/plain; echo'  # Display current IP address

# ------------------------
# Neovim (Text Editor) Aliases
# ------------------------

# Neovim Shortcuts
alias n="nvim"  # Open Neovim
alias nz="nvim ~/.zshrc"  # Edit Zsh configuration in Neovim
alias na="nvim ~/.config/zsh/aliases.zsh"  # Edit this aliases file in Neovim
alias nm="nvim main.py" # Edit main Python file in Neovim

# ------------------------
# Miscellaneous Aliases
# ------------------------

# Various Tools and Shortcuts
alias c="clear"  # Clear terminal
alias st="speedtest-cli"  # Run Internet speed test
alias cdoai="cd ~/obsidian/tutorial_vault/.obsidian/plugins/oai"  # Navigate to Obsidian AI plugin directory
alias int="interpreter --model gpt-4-1106-preview --context_window 128000"  # Run interpreter with GPT-4 model
alias oic='code-insiders .'  # Open current directory in Visual Studio Code - Insiders
alias aiderlatest="aider --model gpt-4-1106-preview"  # Run aider with the latest GPT-4 model
alias vtt="python3 ~/Desktop/gits/voicetotext/main.py"  # Run voice-to-text Python script
alias cdg="cd ~/Desktop/gits"  # Navigate to Desktop Git repositories
alias cpc="sh ~/Desktop/gits/gpt_contentcopy/copy.sh"  # Run content copy script
alias config='/usr/bin/git --git-dir=$HOME/Desktop/gits/dotfiles/ --work-tree=$HOME'  # Git configuration for dotfiles management

# ------------------------
# Enhanced LS Command
# ------------------------

# Modified 'ls' using 'eza' for Enhanced Output
alias ls='eza -1Flabh --git --no-permissions --no-user --git-repos --group-directories-first --icons=auto --color=auto --ignore-glob=.DS_Store'

# ------------------------
# Auto-LS on CD Command
# ------------------------

# Auto-display Directory Contents After 'cd' Command
function cd {
    clear
    builtin cd "$@" && ls
}
