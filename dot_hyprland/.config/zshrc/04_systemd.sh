alias sys-list-failed-units="systemctl list-units --failed"
alias sys-start="sudo systemctl start"
alias sys-stop="sudo systemctl stop"

alias sys-enable="sudo systemctl enable"
alias sys-enable-now="sudo systemctl enable --now"
alias sys-disable="sudo systemctl disable"
alias sys-disable-now="sudo systemctl disable --now"
alias sys-reenable="sudo systemctl reenable"
alias sys-preset="sudo systemctl preset" ## Reset the enable/disable status for 1/more units

alias sys-load="sudo systemctl load"
alias sys-reload="sudo systemctl reload"
alias sys-restart="sudo systemctl restart"
alias sys-daemon-reload="sudo systemctl daemon-reload"
alias sys-try-restart="sudo systemctl try-restart"
alias sys-show-failed="sudo systemctl --state=failed"
alias sys-reset-filad="sudo systemctl reset-failed" ## Reset the failed state of the specified unit/s
alias sys-cancel="sudo systemctl cancel"

alias sys-mask="sudo systemctl mask"
alias sys-unmask="sudo systemctl unmask"
alias sys-mask-now="sudo systemctl mask --now"

alias sys-link="sudo systemctl link"       ## Link a unit file into the unit file search path
alias sys-isolate="sudo systemctl isolate" ## Start a unit & its deps && stop all others
alias sys-edit="sudo systemctl edit"       ## Edit a drop-in snippet or a whole replacement file with --full

alias sys-set-env="sudo systemctl set-environment"     ## Set 1/more systemd manager environment vars
alias sys-unset-env="sudo systemctl unset-environment" ## Unset 1/more systemd manager environment vars
alias sys-kill="sudo systemctl kill"

## ----------------------------------------------------------------

alias sys-is-enabled="systemctl is-enabled"           ## Checks if any oth the specified unit/s are enabled
alias sys-list-units="systemctl list-units"           ## List all units systemd has in memory
alias sys-list-timers="systemctl list-timers"         ## List timer units currently in memory
alias sys-list-unit-files="systemctl list-unit-files" ## List unit files installed on the system
alias sys-list-jobs="systemctl list-jobs"             ## List jobs that in progress
alias sys-is-active="systemctl is-active"             ## Show wheather a unit's active
alias sys-status="systemctl status"                   ## Show runtime status info about 1/more units
alias sys-show="systemctl show"                       ## Show proerities of units, jobs, or the manager itself
alias sys-help="systemctl help"                       ## Show the man page of units
alias sys-show-env="systemctl show-environment"       ## Dump the systemd manager env block
alias sys-cat="systemctl cat"                         ## Show backing files of 1/more units

# get error messages from journalctl
alias jctl="journalctl -p 3 -xb"
