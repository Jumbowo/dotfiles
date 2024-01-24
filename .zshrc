setopt auto_menu # show completion menu on successive tabs
setopt always_to_end
setopt auto_cd
setopt auto_pushd
setopt pushd_ignore_dups
setopt pushdminus

unsetopt menu_complete # do not autoselect the first completion entry

# Dotfile management
alias cfg='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# General aliases
alias nv="nvim"
alias t="tmux"
alias py="python"

alias ls="ls --color"
alias l="ls -lah"
alias ll="ls -lh"
alias la="ls -lAh"
alias lsa="ls -lah"

# Prompt name color
autoload -U colors && colors
PS1="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg[yellow]%}%1~ %{$reset_color%}% "

# Disable cancer
export HOMEBREW_NO_ANALYTICS=1

# GPG setup
GPG_TTY=$(tty)
export GPG_TTY

# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Paths
export PATH="$(brew --prefix)/opt/curl/bin:$PATH"
export PATH="$(brew --prefix)/opt/ruby/bin:$PATH"

# zsh-completions
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

  autoload -Uz compinit
  compinit
fi

# Fish-like syntax highlight / autosuggestions
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
