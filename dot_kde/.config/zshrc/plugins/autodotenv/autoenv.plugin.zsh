source_env() {
  if [[ -f .env ]]; then
    # test .env syntax
    zsh -fn .env || echo 'dotenv: error when sourcing `.env` file' >&2

    echo "Load environment variables used in .env file?"
      select yn in "Yes" "No"; do
        case $yn in
          Yes )
                echo "Loading .env file..."
                if [[ -o a ]]; then
                  source .env
                else
                  set -a
                  source .env
                  set +a
                fi
                echo ".env file loaded"
                break;;
          No )
                echo "Ok! Bye"
                break;;
        esac
      done
  fi
}

autoload -U add-zsh-hook
add-zsh-hook chpwd source_env

source_env
