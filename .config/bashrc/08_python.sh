[ -d "$HOME"/.pyenv ] && export PYENV_ROOT="$HOME/.pyenv"
[ -d "$HOME"/.pyenv/bin ] && export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv >/dev/null; then
  eval "$(pyenv init --path)"
fi
