eval "$(/opt/homebrew/bin/brew shellenv)"

if status is-interactive
  zoxide init fish | source
end

set -gx EDITOR zed
