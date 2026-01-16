#!/bin/bash

GREEN='\033[0;32m'
GRAY='\033[0;30m'
NC='\033[0m' # No Color

script_dir=$(dirname "$(realpath "$0")")
bashrc_file="$HOME/.bashrc"

ssl_cert='export SSL_CERT_FILE=/etc/ssl/cert.pem'

# Check if the line already exists in .bashrc
if ! grep -qF "$ssl_cert" ~/.bashrc; then
  # Append the line to .bashrc if it doesn't exist
  echo "$ssl_cert" >>~/.bashrc
  echo "Added ssl certificate file to .bashrc"
else
  echo "ssl certificate file already exists in .bashrc"
fi

if ! echo "$PATH" | grep -q "$script_dir"; then
  echo "export PATH=\$PATH:$script_dir" >>~/.bashrc
  source ~/.bashrc
  echo "NYU-Torch-HPC-Cheatsheet Directory added to PATH"
else
  echo "NYU-Torch-HPC-Cheatsheet Directory already in PATH"
fi

chmod +rx "$script_dir/chsdevice.sh"
chmod +rx "$script_dir/chslauncher.sh"

if ! grep -Fxq "alias cdv='$script_dir/chsdevice.sh'" "$bashrc_file"; then
  echo "alias cdv='$script_dir/chsdevice.sh'" >>"$bashrc_file"
  echo "Alias cdv for allocating device runtime is added to ~/.bashrc"
else
  echo "Alias cdv already exsits in ~/.bashrc"
fi

if ! grep -Fxq "alias clc='$script_dir/chslauncher.sh'" "$bashrc_file"; then
  echo "alias clc='$script_dir/chslauncher.sh'" >>"$bashrc_file"
  echo "Alias clc for launching singularity environment is added to ~/.bashrc"
else
  echo "Alias clc already exsits in ~/.bashrc"
fi

if ! grep -Fxq "alias se='source /ext3/env.sh'" "$bashrc_file"; then
  echo "alias se='source /ext3/env.sh'" >>"$bashrc_file"
  echo "Alias se for source /ext3/env.sh is added to ~/.bashrc"
else
  echo "Alias se already exsits in ~/.bashrc"
fi

read -p "
Type in your project account for device allocation (e.g. torch_pr_xxx)
" project_account
echo "$project_account" >"$script_dir/account.txt"

echo -e "${GREEN}Account stored in $script_dir/account.txt"
echo -e "If you want to reconfigure your account, execute run_setup.sh again.${NC}"

echo -e "NYU-Torch-HPC-Cheatsheet lazy launcher setup complete."
