alias ytd_playist= 'echo "[ Downloading a playlist using yt-dlp ]; yt-dlp --playlist-random -v --extract-audio --audio-quality 0'
## Download video & convert to mp3 | ytd -a filename.txt
alias ytd_list_from_file='echo "[ Download and convert to mp3 ]"; youtube-dl -i --extract-audio --audio-format mp3 -o "%(title)s.%(ext)s" -a'
alias ytd_single_play_list='echo "[ Download and convert to mp3 ]"; youtube-dl -i --extract-audio --audio-format mp3 -o "%(title)s.%(ext)s"'

alias ytd_audio_aac="youtube-dl --extract-audio --audio-format aac"
alias ytd_audio_best="youtube-dl --extract-audio --audio-format best"
alias ytd_audio_flac="youtube-dl --extract-audio --audio-format flac"
alias ytd_audio_m4a="youtube-dl --extract-audio --audio-format m4a"
alias ytd_audio_opus="youtube-dl --extract-audio --audio-format opus"
alias ytd_audio_vorbis="youtube-dl --extract-audio --audio-format vorbis"
alias ytd_audio_wav="youtube-dl --extract-audio --audio-format wav"

alias ytd_vedio_list='youtube-dl -f bestvideo+bestaudio "%(title)s.%(ext)s" -a'
alias ytd_vedio_best="youtube-dl -f bestvideo+bestaudio"
