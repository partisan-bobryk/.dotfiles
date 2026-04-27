
# PATH Vars
export DOT=$HOME/.dotfiles
export CONFIG=$HOME/.config
export ZSHRC=$DOT/.zshrc
export BREWFILE=$DOT/Brewfile
export BIN=$DOT/bin/scripts
export PATH="$BIN:$PATH"
export GOPATH=$HOME/go

# Update the location of TMUX confg
export XDG_CONFIG_HOME=$CONFIG

# Add a scripts in the dev directory for fast access
export PATH="$HOME/dev/bin:$PATH"

# Point GPG to the current terminal
export GPG_TTY=$(tty)

# Load local env overrides
[[ -f "$HOME/.zshenv.local" ]] && source $HOME/.zshenv.local
