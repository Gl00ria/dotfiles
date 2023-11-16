alias ytd-playist= 'echo "[ Downloading a playlist using yt-dlp ]; yt-dlp --playlist-random -v --extract-audio --audio-quality 0'
## Download video & convert to mp3 | ytd -a filename.txt
alias ytd-list-from-file='echo "[ Download and convert to mp3 ]"; youtube-dl -i --extract-audio --audio-format mp3 -o "%(title)s.%(ext)s" -a'
alias ytd-single-play-list='echo "[ Download and convert to mp3 ]"; youtube-dl -i --extract-audio --audio-format mp3 -o "%(title)s.%(ext)s"'

alias ytd-audio-aac="youtube-dl --extract-audio --audio-format aac"
alias ytd-audio-best="youtube-dl --extract-audio --audio-format best"
alias ytd-audio-flac="youtube-dl --extract-audio --audio-format flac"
alias ytd-audio-m4a="youtube-dl --extract-audio --audio-format m4a"
alias ytd-audio-opus="youtube-dl --extract-audio --audio-format opus"
alias ytd-audio-vorbis="youtube-dl --extract-audio --audio-format vorbis"
alias ytd-audio-wav="youtube-dl --extract-audio --audio-format wav"

alias ytd-vedio-list='youtube-dl -f bestvideo+bestaudio "%(title)s.%(ext)s" -a'
alias ytd-vedio-best="youtube-dl -f bestvideo+bestaudio"
