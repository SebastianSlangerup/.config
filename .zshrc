# BEGIN CUSTOM PROMPT
#autoload -Uz vcs_info
#zstyle ':vcs_info:git:*' formats '%b'
#setopt PROMPT_SUBST
#
#autoload -Uz colors && colors
#precmd() {
#    vcs_info
#    # If there is no git branch, hide the parenthesis and the git branch message
#    if [[ -z ${vcs_info_msg_0_} ]]; then
#        PROMPT='%{$fg[blue]%}%1~ %{$reset_color%}%% '
#    else
#        PROMPT='%{$fg[blue]%}%1~ %{$fg[red]%}(${vcs_info_msg_0_}) %{$reset_color%}%% '
#    fi
#}
#setopt autocd		# Automatically cd into typed directory.
#stty stop undef		# Disable ctrl-s to freeze terminal.
#

# Basic auto/tab complete:
autoload -Uz compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zmodload zsh/complist
compinit
_comp_options+=(globdots)
# END CUSTOM PROMPT

alias vim='nvim'
alias ll='exa -al'
alias ls='exa'
alias sail='[ -f sail ] && sh sail || sh vendor/bin/sail'
alias pint='./vendor/bin/pint'
alias artisan='php artisan'
alias pstorm='open -na "PhpStorm.app"'
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
source /Users/sebastian/.config/op/plugins.sh

# Initialize Starship.rs
eval "$(starship init zsh)"
