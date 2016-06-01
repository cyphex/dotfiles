# Completion
autoload -U compinit
compinit

# Color support
autoload -U colors
colors

# Prompt setup
autoload -U promptinit
promptinit

if [[ -z "$SSH_CLIENT" ]]; then
    PROMPT="%{%(#.$fg[red].$fg[green])%}%B%n%b %{$fg[blue]%}%~%{$reset_color%}
%# "
else
    PROMPT="%{%(#.$fg[red].$fg[yellow])%}%B%n@%m%b %{$fg[blue]%}%~%{$reset_color%}
%# "
fi

RPROMPT="%(?..%{$fg[red]%}%B!%b%{$reset_color%})"

# History settings
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt append_history
setopt extended_history
setopt hist_ignore_dups
setopt hist_ignore_space
setopt inc_append_history
setopt share_history

# Keybindings
bindkey -v
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward

# Other options
setopt autocd
setopt extendedglob
setopt nomatch
unsetopt beep
unsetopt notify

# Import coloring for ls
if [ $(uname -s) = "Linux" ]; then
    eval $(dircolors ~/.dircolors)
fi

# Disable completion of hostnames from /etc/hosts
zstyle ':completion:*' hosts off

# Source aliases
[[ -f ~/.aliases ]] && . ~/.aliases
