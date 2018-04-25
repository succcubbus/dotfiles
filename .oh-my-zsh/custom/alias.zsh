alias more='less'
export LESS='-RmNgiQ'

alias md='mkdir -p'
alias rd='rmdir'

alias glg="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias glog="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"

alias shred='shred -f -n3 -z -u'

alias -g W='| wc'

alias gw='gw --console=rich'
alias gradle='gradle --console=rich'

alias unp="unp -U"

alias open="xdg-open"

alias ipfs='nocorrect ipfs'
alias trizen='nocorrect trizen'

alias ffmpeg='ffmpeg -hide_banner'
alias ffplay='ffplay -hide_banner'

alias youtube-audio='youtube-dl -x -f bestaudio/best --audio-quality 0 --default-search "ytsearch:" --add-metadata --metadata-from-title "(?P<artist>.+?) - (?P<title>.+?)( \(.*\).*)?$" -o "%(title)s.%(ext)s"'

# psutil python package is throwing errors that mess up the display
alias glances="glances 2> /dev/null"

play() {
#	youtube-dl -f bestaudio/best --audio-quality 0 --default-search "ytsearch:" -o - $1 | ffplay -noborder -x 256 -y 144 -vn -volume 50 -autoexit - &
	youtube-dl -f bestaudio/best --audio-quality 0 --default-search "ytsearch:" -o - "$*" | mplayer -volume 10 -softvol -novideo -

#	local folder="/tmp/youtube-play"
#	mkdir $folder
#	youtube-audio -o "$folder/%(title)s.%(ext)s" $1
#	local file=$(find $folder -maxdepth 1 -type f)
#	if [ -f $file ]; then
#		ffplay -noborder -x 256 -y 144 -vn -volume 50 -autoexit $file
#		# cvlc --play-and-exit -I ncurses $file
#		rm -f $file
#	fi
#	rmdir $folder
}

td() {
	mkdir -p $1
	cd $1
}
