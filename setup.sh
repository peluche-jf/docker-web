sudo apt update && sudo apt install git -y
FOLDER_NAME=$(tr -dc 'a-z' </dev/urandom | head -c 10)
mv "$FOLDER_NAME"/* "$FOLDER_NAME"/.* . 2>/dev/null
rmdir "$FOLDER_NAME"
