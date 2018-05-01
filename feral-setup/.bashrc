export PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games:~/bin:~/.local/bin:~/filebot:$PATH

alias rgdm='~/private/rgdrive/scripts/rgdm.sh'
alias rgdt='~/private/rgdrive/scripts/rgdt.sh'
alias rgdp='~/private/rgdrive/scripts/rgdp.sh'
alias rgdpl='~/private/rgdrive/scripts/rgdpl.sh'
alias rgdb='~/private/rgdrive/scripts/rgdb.sh'
alias rglnm='~/private/rgdrive/scripts/rglnm.sh'
alias rglnt='~/private/rgdrive/scripts/rglnt.sh'
alias rgrnm='~/filebot/filebot.sh -rename -non-strict --db TheMovieDB ~/private/rgdrive/upload/media'
alias rgrnt='~/filebot/filebot.sh -rename -non-strict --format "{n} ({y}) - {s00e00}" --db TheTVDB ~/private/rgdrive/upload/tv'
alias filebot='~/filebot/filebot.sh'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
