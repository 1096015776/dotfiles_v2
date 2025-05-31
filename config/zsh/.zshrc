eval "$(zoxide init zsh)"
source $ZDOTDIR/z4h/init.zsh
[[ -f $ZDOTDIR/local.zsh ]] && source $ZDOTDIR/local.zsh

os=$(uname -s)
if [[ "$os" == "Darwin" ]]; then
  source $ZDOTDIR/mac/init.zsh
elif [[ "$os" == "Linux" ]]; then
  source $ZDOTDIR/linux/init.zsh
else
fi

# Extend PATH.
export PNPM_HOME="$XDG_DATA_HOME/pnpm"
typeset -U path
path=(
  /usr/local/{bin,sbin}
  $HOME/dotfiles/bin/common
  $ANDROID_SDK_ROOT/emulator
  $ANDROID_SDK_ROOT/tools
  $ANDROID_SDK_ROOT/tools/bin
  $ANDROID_SDK_ROOT/platform-tools
  $XDG_DATA_HOME/nvim/mason/bin
  $PNPM_HOME
  $path
)

source $ZDOTDIR/custom/init.zsh
# z4h init
