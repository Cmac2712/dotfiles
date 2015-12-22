## SASS DEV Watch Script with uncompressed and sourcemapped  ##
alias watch-dev="sass --watch styles.scss:styles.css --sourcemap"

## SASS LIVE Watch Script  compressed  ##
alias watch-live="sass --watch styles.scss:styles.css --style compressed"

alias mage="ssh -p22 cmacintyre@192.168.0.38"

alias dev3="ssh -p22 cmacintyre@192.168.0.50"

export VISUAL=vim
export EDITOR=$VISUAL

. ~/.bashrc
