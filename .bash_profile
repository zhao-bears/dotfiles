export GOPATH="$HOME/go"
path=(
  $path
  $HOME/.local/bin
  /usr/local/go/bin
  /usr/lib/dart/bin
  $HOME/nvim-linux64/bin
  $HOME/bin
  $HOME/snap/flutter/common/flutter
  $HOME/development/flutter/bin
  $HOME/.pub-cache/bin
  $HOME/.pyenv/bin
  $HOME/.local/share/nvim/mason/bin
  $GOPATH/bin
  # Windows paths (optional - keep them if you use .exe files in WSL)
  /mnt/c/tools/neovim/Neovim
  /mnt/c/tools/neovim/Neovim/bin
  /mnt/c/Windows/system32
)
export PATH

# export PATH=$(echo "$PATH" | sed -e 's/:\/mnt[^:]*//g') # strip out problematic Windows %PATH%
export TESSDATA_PREFIX='/usr/local/share/tessdata'

# sway - to allow flameshot to work
# https://github.com/flameshot-org/flameshot/blob/master/docs/Sway%20and%20wlroots%20support.md
if [[ -n "$SWAYSOCK" ]] then
  export SDL_VIDEODRIVER=wayland
  export _JAVA_AWT_WM_NONREPARENTING=1
  export QT_QPA_PLATFORM=wayland
  export XDG_CURRENT_DESKTOP=sway
  export XDG_SESSION_DESKTOP=sway
fi

# If running from tty1 start sway
[ "$(tty)" = "/dev/tty1" ] && exec sway --unsupported-gpu

export TERM=xterm-256color

# fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

source ~/.bash_aliases
source ~/.bash_functions
