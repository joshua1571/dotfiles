# ~/.zshrc


# SETOPTS
setopt auto_cd
setopt APPEND_HISTORY
setopt SHARE_HISTORY
setopt notify
setopt nobeep
setopt prompt_subst


# EXPORTS
export VISUAL=nvim
export EDITOR="$VISUAL"
export LESSHISTFILE=/dev/null
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH="/usr/local/sbin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"


# ALIASES
alias vim='nvim'
alias brewfull="brew update; brew upgrade; brew cleanup; brew doctor"
alias zshrc='${=EDITOR} ${ZDOTDIR:-$HOME}/.zshrc' # Quick access to the .zshrc file
alias grep='grep --color'
alias wget='wget --hsts-file=~/.config/wget-hsts'
alias zu='source ~/.zshrc'
alias tmux='tmux -f ~/.config/tmux/tmux.conf'
alias l='ls -lFh'     #size,show type,human readable
alias la='ls -lAFh'   #long list,show almost all,show type,human readable
alias lr='ls -tRFh'   #sorted by date,recursive,show type,human readable
alias lt='ls -ltFh'   #long list,sorted by date,show type,human readable
alias ll='ls -l'      #long list
alias ldot='ls -ld .*'
alias lS='ls -1FSsh'
alias lart='ls -1Fcart'
alias lrt='ls -1Fcrt'


# PROMPT
autoload -U colors zsh/terminfo
colors
PROMPT='%F{green}%n%f@%F{magenta}%m%f %F{blue}%B%~%b%f %# '
RPROMPT='[%F{yellow}%?%f]'


# DIRCOLORS
export CLICOLOR=YES
export LSCOLORS="Gxfxcxdxbxegedabagacad"


# FUNCTIONS
# Colored man pages
man() {
  env \
    LESS_TERMCAP_mb=$(printf "\e[1;31m") \
    LESS_TERMCAP_md=$(printf "\e[1;31m") \
    LESS_TERMCAP_me=$(printf "\e[0m") \
    LESS_TERMCAP_se=$(printf "\e[0m") \
    LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
    LESS_TERMCAP_ue=$(printf "\e[0m") \
    LESS_TERMCAP_us=$(printf "\e[1;32m") \
    man "$@"
}


# TMUX
if [[ -z "$TMUX" ]] ;then
    ID="$( tmux ls | grep -vm1 attached | cut -d: -f1 )" # get the id of a deattached session
    if [[ -z "$ID" ]] ;then # if not available create a new one
        tmux new-session
    else
        tmux attach-session -t "$ID" # if available attach to it
    fi
fi
