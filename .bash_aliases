# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias lo="stat -c '%A %a %n' *" 

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

## SASS DEV Watch Script with uncompressed and sourcemapped  ##
alias watch-dev="sass --watch styles.scss:styles.css --sourcemap"

## SASS LIVE Watch Script  compressed  ##
alias watch-live="sass --watch styles.scss:styles.css --style compressed"

## SASS DEV Watch Script with uncompressed and sourcemapped  ##
alias watch-dev="sass --watch styles.scss:styles.css --sourcemap"

## SASS LIVE Watch Script  compressed  ##
alias watch-live="sass --watch styles.scss:styles.css --style compressed"

## Go to localhost
alias lhost="cd /var/www/html/"

## SSH logins
alias mage="ssh -p22 cmacintyre@192.168.0.38"
alias dev3="ssh dev3"
alias redhat2="ssh redhat2"
alias red2="ssh redhat2"
alias gohome="ssh -p2222 craig@92.237.222.9"

## Hide/show encrypted files
alias hidefiles="sudo fusermount -u ~/crypt"
alias showfiles="encfs ~/.crypt ~/crypt"

## Get public IP address
alias myip="curl ifconfig.me"

## Instead of just rm files put them in the trash
alias tp="trash-put"
alias tl="trash-list"
alias rm="trash-put"

## Git
alias gpshom="git push origin master"
alias gplom="git pull origin master"
alias gp="git pull"
alias gpsh="git push"
alias gs="git status"
alias gs="git status -s"
alias gco="git checkout"
alias gstsh="git stash"
alias gl="git log"
alias gbr="git branch"
alias glp="git log --pretty=oneline --graph --abbrev-commit --decorate"
alias gl="git log --pretty=oneline --graph --abbrev-commit"
alias ga="git add"
alias gau="git add -u"
alias gaa="git add -A"
alias gcm="git commit -m"

## General purpose/self-explainatory alias
alias cl="clear"
alias c="clear"
alias filesizes="ls --sort=size -lh ."
alias ls="ls -l"
alias la="ls -la"

## Magestead
alias magestead="php ~/magestead/magestead"
alias composer="php bin/composer.phar"

## Make tmux assume terminal supports 256 colours
alias tmux="tmux -2"

## Stopwatch
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'

## Mount DOS as cifs
alias mount-dos='sudo mount -t cifs -o uid=1000,gid=1000,username=cmacintyre,password=QCGD3qCRmr2g //redhat/dos ~/sites/directofficesupply'
alias mount-gretna='sudo mount -t cifs -o uid=1000,gid=1000,username=cmacintyre,password=QCGD3qCRmr2g //redhat/gretnagreen ~/sites/gretna-green'
alias mount-ace='sudo mount -t cifs -o uid=1000,gid=1000,username=cmacintyre,password=QCGD3qCRmr2g //redhat/acefixings ~/sites/acefixings'
alias mount-dev3='sudo sshfs -o allow_other -o follow_symlinks cmacintyre@192.168.0.50:/home/cmacintyre dev3/'
alias ports="netstat -lntup"
