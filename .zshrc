export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

zstyle ':omz:update' mode reminder  # Update reminder

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Catppuccin color scheme
source ~/.zsh/catppuccin_mocha-zsh-syntax-highlighting.zsh

plugins=(git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# export MANPATH="/usr/local/man:$MANPATH"

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# General aliases
alias nv="nvim"
alias t="tmux"
alias py="python3"

# Disable cancer
export HOMEBREW_NO_ANALYTICS=1

# Pref brew curl
export PATH="$(brew --prefix)/opt/curl/bin:$PATH"

# GPG setup
GPG_TTY=$(tty)
export GPG_TTY

# Dotfiles gihtub management
alias cfg='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# SMLNJ
export PATH="$PATH:/usr/local/smlnj/bin/"

# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
