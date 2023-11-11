#### gpg encryption
## verify signature for isos
alias gpg_check="gpg2 --keyserver-options auto-key-retrieve --verify"
alias fix_gpg_check="gpg2 --keyserver-options auto-key-retrieve --verify"

## receive the key of a developer
alias gpg_retrieve="gpg2 --keyserver-options auto-key-retrieve --receive-keys"
alias fix_gpg_retrieve="gpg2 --keyserver-options auto-key-retrieve --receive-keys"

alias user_list="cut -d: -f1 /etc/passwd"
