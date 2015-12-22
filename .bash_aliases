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
