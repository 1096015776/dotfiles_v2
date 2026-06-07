# docker exec -it --detach-keys="ctrl-@,ctrl-@" fx-linux zsh
# docker run -it --name fx-linux -e COLORTERM=truecolor -e TERM=xterm-256color --detach-keys="ctrl-@,ctrl-@" -w /root alpine:edge
# apk add --no-cache ncurses-terminfo-base ncurses-terminfo ncurses-libs

apk add --no-cache neovim lazygit fd ripgrep jq alpine-sdk delta tmux yazi fd zsh bash zip npm figlet nginx fzf lua-language-server stylua tree-sitter-cli fastfetch curl 7zip file bat eza openssh-client
apk del --purge   alpine-sdk tree-sitter-cli

# find . -type d -name ".git" -exec rm -rf {} +
# find . -type d -name ".github" -exec rm -rf {} +
