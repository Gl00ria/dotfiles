web-search plugin
-----------------
This plugin allow aliases for searching from terminal with some popular web search engines.

## Installation

```sh
git clone https://github.com/sinetoami/web-search.git "$ZSH_CUSTOM/plugins/web-search"
```
And add the plugin to your .zshrc:

```sh
plugins=(... web-search)
```

## Usage
`web-search` plugin give to you alias for `web_search` command. You can use this for example:
```
# using web_search command
$ web_search google zsh

# using alias
$ google zsh
```
The results are the same for both ways.

## Search engines supported
| alias     | engine                                      |
| ---       | ---                                         |
| `ddg`     | `https://www.duckduckgo.com/?q=`            |
| `google`  | `https://www.google.com/search?q=`          |
| `yahoo`   | `https://search.yahoo.com/search?p=`        |
| `github`  | `https://github.com/search?q=`              |
| `youtube` | `https://youtube.com/results?search_query=` |
| `bing`    | `https://www.bing.com/search?q=`            |

## Plus+ DuckDuckGo
| alias    | description                        |
| ---      | ---                                |
| `wiki`   | open result with Wikipedia         |
| `news`   | open result with DuckDuckGo News   |
| `map`    | open result with Google Maps       |
| `images` | open result with DuckDuckGo Images |
| `ducky`  | open the first result              |

## Special thanks
- [Saurabh Kumar](https://github.com/theskumar) for creating the plugin on which this one is based.
- [Joe Block](https://github.com/unixorn) for contributing with [macOS support](https://github.com/sinetoami/web-search/commit/7acc6e1eee7cf1086190daf0d66fc3fe589ca975) for this plugin.

## License
[MIT License](LICENSE)
