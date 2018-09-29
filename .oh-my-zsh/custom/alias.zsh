alias more='less'
export LESS='-RmNgiQ'

alias md='mkdir -p'
alias rd='rmdir'

alias glg="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias glog="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"

alias shred='shred -f -n3 -z -u'

alias -g G='| grep'
alias -g W='| wc'

alias gw='gw --console=rich'
alias gradle='gradle --console=rich'

alias vim='nvim'

alias unp='unp -U'

alias open='xdg-open'

alias ipfs='nocorrect ipfs'
alias trizen='nocorrect trizen'
alias yay='nocorrect yay'

alias ffmpeg='ffmpeg -hide_banner'
alias ffplay='ffplay -hide_banner'

alias youtube-audio='youtube-dl -x -f bestaudio/best --audio-quality 0 --default-search "ytsearch:" --add-metadata --metadata-from-title "(?P<artist>.+?) - (?P<title>.+?)( \(.*\).*)?$" -o "%(title)s.%(ext)s"'

# psutil python package is throwing errors that mess up the display
alias glances='glances 2> /dev/null'

play() {
    mplayer -volume 50 -softvol -novideo \
        <(youtube-dl -f bestaudio/best --audio-quality 0 --default-search "ytsearch:" -o - "$*")
}

td() {
	mkdir -p $1
	cd $1
}
