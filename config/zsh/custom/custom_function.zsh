function proxy_on(){
   export no_proxy=127.0.0.1
   export http_proxy=http://127.0.0.1:1087;export https_proxy=http://127.0.0.1:1087;export ALL_PROXY=socks5://127.0.0.1:1080
}
function proxy_off(){
  unset no_proxy
  unset http_proxy https_proxy ALL_PROXY
}

