#!/bin/bash

# bashunit
curl -s https://bashunit.typeddevs.com/install.sh | bash -s lib beta

function download() {
  local url=$1
  local destination=$2
  local name=${3:-$(basename "$destination")}

  if curl -s -L "$url" -o "$destination"; then
    echo "> $name installed successfully in '$(dirname "$destination")'"
    chmod +x "$destination"
  else
    echo "Failed to install $name!"
    exit 1
  fi
}

# create-pr
download "https://github.com/Chemaclass/create-pr/releases/download/0.6/create-pr" \
  "lib/create-pr"

# bash-dumper
download "https://github.com/Chemaclass/bash-dumper/releases/download/0.1/dumper.sh" \
  "src/dev/dumper.sh"
