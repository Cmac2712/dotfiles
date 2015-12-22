# Path to your oh-my-zsh installation.
  export ZSH=/home/craig/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

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
plugins=(git)

# User configuration

  export PATH="/home/craig/npm-global/bin:/home/craig/python-scripts:/home/craig/usr/bin/python:/home/craig/bin:/home/craig/bin:/usr/local/heroku/bin:/usr/local/heroku/bin:/home/craig/npm-global/bin:/home/craig/python-scripts:/home/craig/usr/bin/python:/home/craig/bin:/home/craig/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias lhost="cd /var/www/html/"
alias cl="clear"
alias c="clear"
alias filesizes="ls --sort=size -lh ."

alias hidefiles="sudo fusermount -u ~/crypt"
alias showfiles="encfs ~/.crypt ~/crypt"

## Instead of just rm files put them in the trash

alias tp="trash-put"
alias tl="trash-list"
alias rm="trash-put"

## Get public IP address

alias myip="curl ipinfo.io/ip"
alias myipinfo="curl ipinfo.io"

# Restart Unity

alias reunity="setsid unity"

# SSH into DigitalOcean droplet

alias ssh-do-media="ssh root@178.62.10.183"
alias dev0="ssh craig@46.101.15.151"

# ls
alias ls="ls -l"
alias tmux="tmux -2"

## Git

alias g='git' 
alias gau='git add -u' 
alias gaa='git add -A'
alias gpshom='git push origin master'
alias gplom='git pull origin master'
alias gs='git status'
alias gpl='git pull'
alias gbr='git branch'
alias gcm='git commit -m'
alias glp='git log --pretty=oneline'
alias gco='git checkout'

# # Release

alias release='rsync -r --exclude-from "rsync_excludes.txt" . craig@dev0:/var/www/html/portfolio/loudondesign/wp-content/themes/html5blank/'
alias mount-dev0='sshfs -o allow_other -o IdentityFile=/home/craig/.ssh/id_rsa craig@46.101.15.151:/ /home/craig/sites/dev0/'
