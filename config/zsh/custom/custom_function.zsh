function proxy_on(){
   export no_proxy=127.0.0.1
   export http_proxy=http://127.0.0.1:1087;export https_proxy=http://127.0.0.1:1087;export ALL_PROXY=socks5://127.0.0.1:1080
}
function proxy_off(){
  unset no_proxy
  unset http_proxy https_proxy ALL_PROXY
}

fzf-kill-process() {
  local pid=$(lsof -Pwni tcp | sed 1d | eval "fzf ${FZF_DEFAULT_OPTS} -m --header='[kill:tcp]'" | awk '{print $2}')
  if [ "x$pid" != "x" ]
  then
    echo $pid | xargs kill -${1:-9}
    ks
  fi
}

zle -N fzf-kill-process  # 注册为 Zsh 功能部件
bindkey '^Z' fzf-kill-process  # 绑定 Ctrl+Z 到该功能

find-in-file() {
	grep --line-buffered --color=never -r "" * | fzf
}

fzf-kill-processt(){
  local pid=$(ps -ef | sed 1d | eval "fzf ${FZF_DEFAULT_OPTS} -m --header='[kill:process]'" | awk '{print $2}')

  if [ "x$pid" != "x" ]
  then
    echo $pid | xargs kill -${1:-9}
    kp
  fi

}

zle -N fzf-kill-processt
bindkey '^X' fzf-kill-processt

zle -N find-in-file
bindkey '^f' find-in-file

function zle_eval {
    echo -en "\e[2K\r"
    eval "$@"
    zle redisplay
}

function openlazygit {
    zle_eval lazygit
}

zle -N openlazygit; bindkey "^G" openlazygit

function opennvim {
    zle_eval nvim
}

zle -N opennvim; bindkey "^N" opennvim

