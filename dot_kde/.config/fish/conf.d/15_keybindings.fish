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
#             :     License      :  MIT License                                         #
#                                                                                       #
#             :     @file        :  14_keybindings.fish                                 #
#             :     @folder      :  ~/.config/fish/conf.d                               #
#             :     @brief       :  key-bind some quickies needed to be reached quickly #
#             :     @requires    :  fishShell, fzf                                      #
#             :     @optional    :  none                                                #
#             :     @Note        :  - \c = Control, \e = Alt                            #
#                                   - see NOTE:1) {EDITOR} = the default editor         #
#_______________________________________________________________________________________#
#                                                                                       #
#             :    Created on   :   26, Sep, 2022                                       #
#             :   Last Updated  :   26, Sep, 2022                                       #
# Update History :                                                                      #
#_______________________________________________________________________________________#
#

# bind \cE "$EDITOR $(fzf)"              ## NOTE:1) need some fishy help here
bind \cF "_fzf_search_directory"       ## find a dir & print the location
bind \cH "_fzf_search_history"         ## search command history
bind \cN "_fzf_search_variables"       ## search vars in the current dir
bind \cP "_fzf_search_processes"       ## search current running processes
bind \el "accept-autosuggestion"       ## accept-autosuggestion
