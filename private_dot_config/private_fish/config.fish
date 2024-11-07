eval "$(/opt/homebrew/bin/brew shellenv)"

if status is-interactive
  # Commands to run in interactive sessions can go here
  set -gx EDITOR nvim

  # zoxide
  zoxide init fish | source
end

# pnpm
set -gx PNPM_HOME "/Users/wardxela/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
