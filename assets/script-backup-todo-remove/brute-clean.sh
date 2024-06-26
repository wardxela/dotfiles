# Source: https://averagelinuxuser.com/clean-arch-linux/

# Delete pacman cache
# sudo pacman -Scc
pacman -Sc

# Delete orphans
pacman -Rns $(pacman -Qtdq)

# Delete user cache
rm -rf ~/.cache/*