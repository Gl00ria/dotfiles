# play audio files in current dir by type
alias play-wav="rhythmbox *.wav"
alias play-ogg="rhythmbox *.ogg"
alias play-mp3="rhythmbox *.mp3"

# play video files in current dir by type
alias play-avi="vlc *.avi"
alias play-mov="vlc *.mov"
alias play-mp4="vlc *.mp4"

alias gif="mpv --loop"

# ╒══════════════════════════════════════════════════════════╕
# │                                                          │
# │                          yt-dlp                          │
# │                                                          │
# ╘══════════════════════════════════════════════════════════╛
# download video & convert to mp3 | ytd -a filename.txt
alias ytd-list-from-file='echo "[ Download Playlist From A File ]"; yt-dlp -i --extract-audio --audio-format mp3 -o "%(title)s.%(ext)s" -a'
alias ytd-download-single='echo "[ Download Single-Vids From A File ]"; yt-dlp -i --extract-audio --audio-format mp3 --no-playlist -o "%(title)s.%(ext)s" -a'
