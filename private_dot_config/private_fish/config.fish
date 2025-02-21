eval "$(/opt/homebrew/bin/brew shellenv)"

if status is-interactive
  # Commands to run in interactive sessions can go here
  set -gx EDITOR nvim

  # zoxide
  zoxide init fish | source
end
