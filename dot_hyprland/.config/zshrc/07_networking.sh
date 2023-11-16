alias ip='ip --color=auto'

## get public ip v4
alias show-public-ip-v4="curl -Ss4 icanhazip.com/v4"
alias public-ip-v4="show-public-ip-v4"

## get public ip v6
alias show-public-ip-v6="curl -Ss6 icanhazip.com/v6"
alias public-ip-v6="show-public-ip-v6"

## ----------------------- nmap -----------------------
##  -sS - TCP SYN scan
##  -v - verbose
##  -T1 - timing of scan. Options are paranoid (0), sneaky (1), polite (2), normal (3), aggressive (4), and insane (5)
##  -sF - FIN scan (can sneak through non-stateful firewalls)
##  -PE - ICMP echo discovery probe
##  -PP - timestamp discovery probe
##  -PY - SCTP init ping
##  -g - use given number as source port
##  -A - enable OS detection, version detection, script scanning, and traceroute (aggressive)
##  -O - enable OS detection
##  -sA - TCP ACK scan
##  -F - fast scan
##  --script=vuln - also access vulnerabilities in target

alias nmap-open-ports="nmap --open"
alias nmap-list-interfaces="nmap --iflist"
alias nmap-stealth="sudo nmap -sS -v -T1"
alias nmap-fin="sudo nmap -sF -v"
alias nmap-full="sudo nmap -sS -T4 -PE -PP -PS80,443 -PY -g 53 -A -p1-65535 -v"
alias nmap-check-for-firewall="sudo nmap -sA -p1-65535 -v -T4"
alias nmap-ping-through-firewall="nmap -PS -PA"
alias nmap-fast="nmap -F -T5 --version-light --top-ports 300"
alias nmap-detect-versions="sudo nmap -sV -p1-65535 -O --osscan-guess -T4 -Pn"
alias nmap-check-for-vulns="nmap --script=vuln"
alias nmap-full-udp="sudo nmap -sS -sU -T4 -A -v -PE -PS22,25,80 -PA21,23,80,443,3389 "
alias nmap-traceroute="sudo nmap -sP -PE -PS22,25,80 -PA21,23,80,3389 -PU -PO --traceroute "
alias nmap-full-with-scripts="sudo nmap -sS -sU -T4 -A -v -PE -PP -PS21,22,23,25,80,113,31339 -PA80,113,443,10042 -PO --script all "
alias nmap-web-safe-osscan="sudo nmap -p 80,443 -O -v --osscan-guess --fuzzy "
alias nmap-ping-scan="nmap -n -sP"
