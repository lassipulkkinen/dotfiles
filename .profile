#
# ~/.profile
#

export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CURRENT_DESKTOP="$XDG_SESSION_DESKTOP"

export PATH="$PATH:$XDG_DATA_HOME/cargo/bin"
export PATH="$PATH:$XDG_DATA_HOME/gem/bin"
export PATH="$PATH:$XDG_DATA_HOME/go/bin"
export PATH="$PATH:$XDG_DATA_HOME/npm/bin"

export EDITOR=nvim

export STATUS_COMMAND=i3status
export WALLPAPER_PATH="$HOME/Pictures/wallpapers"

export BUNDLE_USER_CACHE="$XDG_CACHE_HOME/bundle"
export BUNDLE_USER_CONFIG="$XDG_CONFIG_HOME/bundle"
export BUNDLE_USER_PLUGIN="$XDG_DATA_HOME/bundle"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export GEM_HOME="$XDG_DATA_HOME/gem"
export GEM_SPEC_CACHE="$XDG_CACHE_HOME/gem"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export GOPATH="$XDG_DATA_HOME/go"
export GRADLE_USER_HOME="$XDG_DATA_HOME/gradle"
export HTTPIE_CONFIG_DIR="$XDG_CONFIG_HOME/httpie"
export LESSHISTFILE="$XDG_CACHE_HOME/less_history"
export NOTMUCH_CONFIG="$XDG_CONFIG_HOME/notmuch/notmuchrc"
export MYSQL_HISTFILE="$XDG_CACHE_HOME/mysql_history"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export PASSWORD_STORE_DIR="$XDG_DATA_HOME/pass"
export PSQL_HISTORY="$XDG_CACHE_HOME/psql_history"
export RANDFILE="$XDG_CACHE_HOME/rnd"
export PYLINTHOME="$XDG_DATA_HOME/pylint"
export PYTHONSTARTUP="$XDG_CONFIG_HOME/python/startup.py"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export _JAVA_OPTIONS="-Djava.util.prefs.userRoot=$XDG_CONFIG_HOME/java"

export MOZ_ENABLE_WAYLAND=1
export _JAVA_AWT_WM_NONREPARENTING=1

if [ "$SHELL" = "bash" ]; then
  source .bashrc
fi
