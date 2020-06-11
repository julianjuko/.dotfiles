export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

source ~/perl5/perlbrew/etc/bashrc

export PATH="$PATH:/Users/juliananning/perl5/perlbrew/perls/perl-5.24.1/bin/sqitch"

export BASH_SILENCE_DEPRECATION_WARNING=1
