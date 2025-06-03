os=$(uname -s)
common_pack=(
tmux 
nvim 
lazygit 
yazi
fzf 
ripgrep 
fd
jq
git-delta
zoxide
bat
eza
prettyping
imagemagick
poppler
ffmpeg
fastfetch
figlet
)

mac_pack=(sevenzip)
linux_pack=(7zip unzip zip)
if [[ "$os" == "Darwin" ]]; then
  source $ZDOTDIR/mac/init.zsh
elif [[ "$os" == "Linux" ]]; then
  source $ZDOTDIR/linux/init.zsh
else
fi

