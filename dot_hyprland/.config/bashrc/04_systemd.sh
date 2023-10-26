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
#             :     @file        :  04_systemd.sh                                       #
#             :     @folder      :  ~/.config/bash/                                     #
#             :     @brief       :  aliases for systemctl                               #
#             :     @requires    :  bashShell                                           #
#             :     @optional    :  none                                                #
#             :     @Note        :  none                                                #
#_______________________________________________________________________________________#
#                                                                                       #
#             :    Created on   :   26, Sep, 2022                                       #
#             :   Last Updated  :   26, Sep, 2022                                       #
# Update History :                                                                      #
#_______________________________________________________________________________________#
#

## ------------------------- SUDO's space -------------------------

alias sys_list_failed_units="systemctl list-units --failed"
alias sys_start="sudo systemctl start"
alias sys_stop="sudo systemctl stop"

alias sys_enable="sudo systemctl enable"
alias sys_enable_now="sudo systemctl enable --now"
alias sys_disable="sudo systemctl disable"
alias sys_disable_now="sudo systemctl disable --now"
alias sys_reenable="sudo systemctl reenable"
alias sys_preset="sudo systemctl preset" ## Reset the enable/disable status for 1/more units

alias sys_load="sudo systemctl load"
alias sys_reload="sudo systemctl reload"
alias sys_restart="sudo systemctl restart"
alias sys_daemon_reload="sudo systemctl daemon-reload"
alias sys_try_restart="sudo systemctl try-restart"
alias sys_show_failed="sudo systemctl --state=failed"
alias sys_reset_filad="sudo systemctl reset-failed" ## Reset the failed state of the specified unit/s
alias sys_cancel="sudo systemctl cancel"

alias sys_mask="sudo systemctl mask"
alias sys_unmask="sudo systemctl unmask"
alias sys_mask-now="sudo systemctl mask --now"

alias sys_link="sudo systemctl link"       ## Link a unit file into the unit file search path
alias sys_isolate="sudo systemctl isolate" ## Start a unit & its deps && stop all others
alias sys_edit="sudo systemctl edit"       ## Edit a drop-in snippet or a whole replacement file with --full

alias sys_set_env="sudo systemctl set-environment"     ## Set 1/more systemd manager environment vars
alias sys_unset_env="sudo systemctl unset-environment" ## Unset 1/more systemd manager environment vars
alias sys_kill="sudo systemctl kill"

## ----------------------------------------------------------------

alias sys_is_enabled="systemctl is-enabled"           ## Checks if any oth the specified unit/s are enabled
alias sys_list_units="systemctl list-units"           ## List all units systemd has in memory
alias sys_list_timers="systemctl list-timers"         ## List timer units currently in memory
alias sys_list_unit-files="systemctl list-unit-files" ## List unit files installed on the system
alias sys_list_jobs="systemctl list-jobs"             ## List jobs that in progress
alias sys_is_active="systemctl is-active"             ## Show wheather a unit's active
alias sys_status="systemctl status"                   ## Show runtime status info about 1/more units
alias sys_show="systemctl show"                       ## Show proerities of units, jobs, or the manager itself
alias sys_help="systemctl help"                       ## Show the man page of units
alias sys_show-env="systemctl show-environment"       ## Dump the systemd manager env block
alias sys_cat="systemctl cat"                         ## Show backing files of 1/more units

# get error messages from journalctl
alias jctl="journalctl -p 3 -xb"
