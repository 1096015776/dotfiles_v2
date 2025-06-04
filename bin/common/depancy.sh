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

mac_pack=(
  sevenzip
  tesseract
  borders
  anhoder/go-musicfox/go-musicfox
  sketchybar
  azhuchkov/tools/tunblkctl
  ical-buddy
  clipboard
)

mac_cask_pack=(
  font-hack-nerd-font
  raycast
  nikitabobko/tap/aerospace
  font-jetbrains-mono-nerd-font
  font-victor-mono-nerd-font
  kitty
  wezterm
  visual-studio-code
  free-ruler
  flameshot
  notion
  neteasemusic
  wechat
  qq
  google-chrome
  anki
  json-viewer
  font-sketchybar-app-font
)

linux_pack=(
  7zip
  unzip
  zip
  base-devel
)

if [[ "$os" == "Darwin" ]]; then
  # sketchybar
  brew tap FelixKratz/formulae
  # border
  # brew tap FelixKratz/formulae
  brew install "${common_pack[@]}"
  brew install "${mac_pack[@]}"
  brew install --cask "${mac_cask_pack[@]}"
  defaults write com.apple.finder CreateDesktop -bool FALSE; killall Finder
elif [[ "$os" == "Linux" ]]; then
  pacman -S "${common_pack[@]}" "${linux_pack[@]}"
else
  echo "Unsupported OS: $os"
  exit 1
fi
