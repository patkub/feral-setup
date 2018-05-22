export PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games:~/bin:~/.local/bin:~/filebot:$PATH

# rclone wrappers
alias rgdm='~/private/rgdrive/scripts/rgdm.sh'
alias rgdt='~/private/rgdrive/scripts/rgdt.sh'
alias rgdp='~/private/rgdrive/scripts/rgdp.sh'
alias rgdpl='~/private/rgdrive/scripts/rgdpl.sh'
alias rgdb='~/private/rgdrive/scripts/rgdb.sh'

# hardlink
alias rglnm='~/private/rgdrive/scripts/rglnm.sh'
alias rglnt='ln * ~/private/rgdrive/upload/tv/'

# rename
alias rgrnm="~/filebot/filebot.sh -rename -non-strict --format \"{n.replaceAll(/:/, ' -')} ({y})\" --db TheMovieDB ~/private/rgdrive/upload/media"
alias rgrnt='~/filebot/filebot.sh -rename -non-strict --format "{n} ({y}) - {s00e00}" --db TheTVDB ~/private/rgdrive/upload/tv'

# upload
alias rgum='nohup ./scripts/rgdm.sh encrypt_upload upload/media > rclone_log_media.txt &'
alias rgut='nohup ./scripts/rgdt.sh encrypt_upload upload/tv > rclone_log_tv.txt &'

alias filebot='~/filebot/filebot.sh'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
