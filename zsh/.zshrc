# lang settings
# nvim will not function properly on UTF-8 chars without these settings
export LC_ALL=en_GB.UTF-8  
export LANG=en_GB.UTF-8

export TERM="xterm-256color"
# [[ -n $TMUX ]] && export TERM="screen-256color"
# add py 3.11 to PATH
export PATH="/usr/local/opt/python@3.11/libexec/bin:/usr/local/sbin:$PATH"
# add dotnet tools to PATH
export PATH="$PATH:$HOME/.dotnet/tools"
export CLICOLOR=1
export LSCOLORS="ExFxBxDxCxegedabagacad"
export PROMPT="%B%F{#7FBBB3}%n%f@%F{#7FBBB3}%m%f:%F{#DBBC7F}%2~%F{#D699B6}%#%f%b "

# enable autocompletion for subcommands
autoload -Uz compinit && compinit
# the zsh cmp file says I need the following command but it seems like I don't
# zstyle ':completion:*:*:git:*' script /usr/local/share/zsh/site-functions/git-completion.bash

export OMNISHARPHOME="$HOME/.config/"

# git in prompt
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT='%B${vcs_info_msg_0_}%b'
zstyle ':vcs_info:git:*' formats '%b'

# rc thingy
alias lrc="source ~/.zshrc"
alias erc="nvim ~/.zshrc"
alias ltrc="tmux source-file ~/.tmux.conf"
alias etrc="nvim ~/.tmux.conf"
alias enrc="nvim ~/.config/nvim/init.lua"

alias doc="cd ~/Documents/"
alias dow="cd ~/Downloads/"
alias des="cd ~/Desktop/"
alias pic="cd ~/Pictures/Saved\ Pictures/"
alias shot="cd ~/Pictures/Screen\ Shot/"
alias aps="cd ~/Library/Application\ Support/"
alias nv="nvim"
alias ac="cd ~/Projects/Aca/"
alias tm="cd ~/Library/Application\ Support/Terraria/tModLoader/ModSources/"
alias tin="cd ~/Projects/tMLAllInOne/"
alias lll="cd ~/Projects/Project-LLL/"
alias qn="cd ~/Documents/QuickNotes/"
alias sc="cd ~/Projects/Scratchpads/"
alias tml="cd ~/Projects/tModLoader/"

alias tn="tmux new-session -A -s"

export HASTE_SERVER="https://hst.sh"
export HASTE_SERVER_TOKEN="9dc37f946feefdc2f53e8ed2b6a59e6008d82bda0dfd3d74b8164812f77ee18ebe32a1832126b11b7d4eec65caa4308afb29c93ffcba607bad2352fb74ac158a"
alias hst="haste | sed -e 's/share\///g' | pbcopy"

source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

chruby 3.2.2

# startup visuals and commands

neofetch
