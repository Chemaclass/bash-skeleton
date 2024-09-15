#!/bin/bash

source src/check_os.sh

function build() {
  local out=$1

  generate_bin "$out"
  generate_checksum "$out"

  echo "⚡️Build completed⚡️"
}

function generate_bin() {
  local out=$1
  local temp
  temp="$(dirname "$out")/temp.sh"

  echo '#!/bin/bash' > "$temp"
  echo "Generating main in the '$(dirname "$out")' folder..."
  for file in src/*.sh; do
    {
      echo "# $file"
      tail -n +2 "$file" >> "$temp"
      echo ""
    } >> "$temp"
  done

  cat main >> "$temp"
  grep -v '^source' "$temp" > "$out"
  rm "$temp"
  chmod u+x "$out"
}

function generate_checksum() {
  local out=$1

  if [[ "$_OS" == "Windows" ]]; then
    return
  fi

  if [[ "$_OS" == "OSX" ]]; then
    checksum=$(shasum -a 256 "$out")
  elif [[ "$_OS" == "Linux" ]]; then
    checksum=$(sha256sum "$out")
  fi

  echo "$checksum" > "$(dirname "$out")/checksum"
  echo "$checksum"
}

########################
#         MAIN         #
########################
OUT_DIR=${1:-"bin"}

mkdir -p "$OUT_DIR"
build "$OUT_DIR/main"