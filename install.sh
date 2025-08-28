set -euo pipefail
sudo apt update
sudo apt install -y build-essential curl git unzip ca-certificates
grep -q 'dotfiles/bashrc.d/aliases.sh' ~/.bashrc || \
 echo '[ -f "$HOME/dotfiles/bashrc.d/aliases.sh" ] && . "$HOME/dotfiles/bashrc.d/aliases.sh"' >> ~/.bashrc
echo "Done. Open a new shell or run: source ~/.bashrc"
