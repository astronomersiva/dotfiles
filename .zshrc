# https://www.atlassian.com/git/tutorials/dotfiles
# https://news.ycombinator.com/item?id=11070797

# Use this for project wise commit author
# https://twitter.com/astronomersiva/status/1159317283249913862

#zmodload zsh/zprof
# Speeds up load time
DISABLE_UPDATE_PROMPT=true

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=/Users/siva-3948/.nvm/versions/node/v8.12.0/bin:/Users/siva-3948/Home/web/setup/:/Users/siva-3948/Home/web/setup//kdiff3.app/Contents/MacOS:/Users/siva-3948/Home/web/setup//apache-ant-1.8.1/bin:/Users/siva-3948/Home/web/setup//gradle-2.12/bin:/Users/siva-3948/.yarn/bin:/Users/siva-3948/Home/web/setup/:/Users/siva-3948/Home/web/setup//kdiff3.app/Contents/MacOS:/Users/siva-3948/Home/web/setup//apache-ant-1.8.1/bin:/Users/siva-3948/Home/web/setup//gradle-2.12/bin:/Users/siva-3948/Home/web/setup/:/Users/siva-3948/Home/web/setup//kdiff3.app/Contents/MacOS:/Users/siva-3948/Home/web/setup//apache-ant-1.8.1/bin:/Users/siva-3948/Home/web/setup//gradle-2.12/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/go/bin:/Users/siva-3948/Home/web/setup//mysql/bin:/Users/siva-3948/Home/web/setup//mysql/bin:/usr/local/mysql/bin/:/Users/siva-3948/Home/web/setup//mysql/bin:$HOME/.cargo/bin
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN


# Path to your oh-my-zsh installation.
export ZSH=/Users/siva-3948/.oh-my-zsh

export PKG_CONFIG_PATH=/usr/local/opt/zlib/lib/pkgconfig

fpath=($HOME/.zsh-completions $fpath)

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME=""
ZSH_THEME="nightowl"
#ZSH_THEME="robbyrussell"
#ZSH_THEME="powerlevel9k/powerlevel9k"
#ZSH_THEME="agnoster"
#ZSH_THEME="spaceship"
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#plugins=(alias-tips git node npm zsh-autosuggestions)
plugins=(alias-tips zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh


#autoload -U promptinit; promptinit
#prompt pure


# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# custom aliases

# work specific aliases
source $HOME/.work-aliases
# personal aliases
source $HOME/.personal-aliases

#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

nvm() {
    unset -f nvm
    export NVM_DIR=~/.nvm
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
    nvm "$@"
}

node() {
    unset -f node
    export NVM_DIR=~/.nvm
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
    node "$@"
}

npm() {
    unset -f npm
    export NVM_DIR=~/.nvm
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
    npm "$@"
}

#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


#ulimit -n 10240

#https://github.com/wting/autojump
#[[ -s /Users/siva-3948/.autojump/etc/profile.d/autojump.sh ]] &&
#source /Users/siva-3948/.autojump/etc/profile.d/autojump.sh
#autoload -U compinit && compinit -u
#source ~/.autojump/share/autojump/autojump.zsh 

# added by travis gem
[ -f /Users/siva-3948/.travis/travis.sh ] && source /Users/siva-3948/.travis/travis.sh
#zprof
