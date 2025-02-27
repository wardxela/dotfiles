eval "$(/opt/homebrew/bin/brew shellenv)"

status is-interactive || exit

set -x EDITOR zed
set -g fish_greeting

zoxide init fish | source
