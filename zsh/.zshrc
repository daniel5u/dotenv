# Shared zsh config. Machine-specific stuff (conda, PATH from installers, ...)
# goes in ~/.zshrc.local, which is sourced at the end and not tracked.

# History
HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=50000
setopt share_history hist_ignore_all_dups hist_ignore_space

# Completion
autoload -Uz compinit && compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' list-colors ''

# Keys: emacs mode, up/down search history by the typed prefix
bindkey -e
autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey '^[[A' up-line-or-beginning-search
bindkey '^[[B' down-line-or-beginning-search
bindkey '^[OA' up-line-or-beginning-search
bindkey '^[OB' down-line-or-beginning-search

# Prompt: [~/path] branch :
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git:*' formats ' %F{green}%b%f'
zstyle ':vcs_info:git:*' actionformats ' %F{green}%b%f|%F{red}%a%f'
precmd() { vcs_info }
setopt prompt_subst
PROMPT='[%F{blue}%1~%f]: '
RPROMPT='${vcs_info_msg_0_}'

# PATH
export PATH="$HOME/.local/bin:$PATH"

# Aliases
alias v='nvim'
alias y='yazi'
alias ck='cargo check'
alias pydoc='python3 -m pydoc'
command -v eza >/dev/null && alias ls='eza -1 -l'

[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local
