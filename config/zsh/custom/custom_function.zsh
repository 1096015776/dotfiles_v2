function proxy_on(){
   export no_proxy=127.0.0.1
   export http_proxy=http://127.0.0.1:1087;export https_proxy=http://127.0.0.1:1087;export ALL_PROXY=socks5://127.0.0.1:1080
}
function proxy_off(){
  unset no_proxy
  unset http_proxy https_proxy ALL_PROXY
}

fzf-kill-process() {
  local pid
  pid=$(ps -ef | sed 1d | fzf -m | awk '{print $2}')

  if [ "x$pid" != "x" ]; then
    echo $pid | xargs kill -${1:-9}
  fi
}
zle -N fzf-kill-process  # 注册为 Zsh 功能部件
bindkey '^Z' fzf-kill-process  # 绑定 Ctrl+Z 到该功能
