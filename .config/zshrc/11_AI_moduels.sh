#
# Ollama
#
alias ollama_list="ollama list"
alias gpt_20b="ollama run gpt-oss:20b"
alias deepseek_14b="ollama run deepseek-r1:14b"
# alias deepseek_8b="ollama run deepseek-r1:8b"
alias gemma3="ollama run gemma3:27b"

#
# N8N
#
alias n8n_docker="docker run -it --rm --name n8n -p 5678:5678 -v n8n_data:/home/node/.n8n docker.n8n.io/n8nio/n8n"

#
# Lobe Chat
#
# Run
alias lobechat_docker_run_local="sudo docker run -d -p 3210:3210 -e OLLAMA_PROXY_URL=http://host.docker.internal:11434 lobehub/lobe-chat"
alias lobechat_docker_run_online="sudo docker run -d -p 3210:3210 -e ACCESS_CODE=lobe66 lobehub/lobe-chat"
