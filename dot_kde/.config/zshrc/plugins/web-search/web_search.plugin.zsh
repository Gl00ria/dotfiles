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
#             :     Author       :  sineto @sineto                                      #
#             :     GitHub       :  https://github.com/sineto                           #
#             :     Source       :  https://github.com/sineto/web-search                #
#             :     License      :  MIT License                                         #
#                                                                                       #
#             :    Edited by     :  Gl00ria @gl00ria                                    #
#             :     GitHub       :  https://github.com/gl00ria                          #
#                                                                                       #
#                                                                                       #
#             :     @file        :  web_search.plugin.zsh                               #
#             :     @folder      :  ~/.config/zshrc/plugins/web-search                  #
#             :     @brief       :  search the internet                                 #
#             :     @requires    :  zsh, xdg-utils                                      #
#                                                                                       #
#_______________________________________________________________________________________#
#                                                                                       #

function web_search() {
  # get the open command
  local open_cmd
  [[ "$OSTYPE" = linux* ]] && open_cmd='xdg-open'
  [[ "$OSTYPE" = darwin* ]] && open_cmd='open'

  pattern='(google|duckduckgo|bing|yahoo|github|youtube)'

  # check whether the search engine is supported
  if [[ $1 =~ pattern ]];
  then
    echo "Search engine $1 not supported."
    return 1
  fi

  local url
  [[ "$1" == 'yahoo' ]] && url="https://search.yahoo.com" || url="https://www.$1.com"

  # no keyword provided, simply open the search engine homepage
  if [[ $# -le 1 ]]; then
    $open_cmd "$url"
    return
  fi

  typeset -A search_syntax=(
    google         "/search?q="
    bing           "/search?q="
    github         "/search?q="
    duckduckgo     "/?q="
    yahoo          "/search?p="
    youtube        "/results?search_query="
    yandex         "/yandsearch?text="
    startpage      "/do/search?q="
    baidu          "/s?wd="
    ecosia         "/search?q="
    goodreads      "/search?q="
    qwant          "/?q="
    stackoverflow  "/search?q="
    wolframalpha   "/input?i="
    scholar        "/scholar?q="
  )

  url="${url}${search_syntax[$1]}"
  shift   # shift out $1

  while [[ $# -gt 0 ]]; do
    url="${url}$1+"
    shift
  done

  url="${url%?}" # remove the last '+'
  nohup $open_cmd "$url" &> /dev/null
}
