#_______________________________________________________________________________________#
#                                                                                       #
#              ██████╗ ██╗      ██████╗  ██████╗ ██████╗ ██╗ █████╗                     #
#             ██╔════╝ ██║     ██╔═████╗██╔═████╗██╔══██╗██║██╔══██╗                    #
#             ██║  ███╗██║     ██║██╔██║██║██╔██║██████╔╝██║███████║                    #
#             ██║   ██║██║     ████╔╝██║████╔╝██║██╔══██╗██║██╔══██║                    #
#             ╚██████╔╝███████╗╚██████╔╝╚██████╔╝██║  ██║██║██║  ██║                    #
#              ╚═════╝ ╚══════╝ ╚═════╝  ╚═════╝ ╚═╝  ╚═╝╚═╝╚═╝  ╚═╝                    #
#_______________________________________________________________________________________#
#                                                                                       #
#                                                                                       #
#             :   Configured by  :  Gl00ria @gl00ria                                    #
#             :     GitHub       :  https://github.com/gl00ria                          #
#                                                                                       #
#             :     @file        :  10_ytd.fish                                         #
#             :     @folder      :  ~/.config/fish/conf.d                               #
#             :     @brief       :  aliases for YouTube-dl                              #
#             :     @requires    :  fishShell, youtube-dl                               #
#             :     @optional    :  none                                                #
#             :     @Note        :  none                                                #
#_______________________________________________________________________________________#
#                                                                                       #
#             :    Created on   :   26, Sep, 2022                                       #
#             :   Last Updated  :   26, Sep, 2022                                       #
# Update History :                                                                      #
#_______________________________________________________________________________________#
#

## Download video & convert to mp3 | ytd -a filename.txt
alias ytd_list_from_file='echo "[ Download and convert to mp3 ]"; youtube-dl -i --extract-audio --audio-format mp3 -o "%(title)s.%(ext)s" -a'
alias ytd_single_play_list='echo "[ Download and convert to mp3 ]"; youtube-dl -i --extract-audio --audio-format mp3 -o "%(title)s.%(ext)s"'

alias ytd_audio_aac="yt-dlp --extract-audio --audio-format aac"
alias ytd_audio_best="yt-dlp --extract-audio --audio-format best"
alias ytd_audio_flac="yt-dlp --extract-audio --audio-format flac"
alias ytd_audio_m4a="yt-dlp --extract-audio --audio-format m4a"
alias ytd_audio_opus="yt-dlp --extract-audio --audio-format opus"
alias ytd_audio_vorbis="yt-dlp --extract-audio --audio-format vorbis"
alias ytd_audio_wav="yt-dlp --extract-audio --audio-format wav"
alias ytd_vedio_best="yt-dlp -f bestvideo+bestaudio"
