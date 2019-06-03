export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin"

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

source ~/perl5/perlbrew/etc/bashrc
