mkdir -p resources/config
sudo apt update && sudo apt install git -y
FOLDER_NAME=$(tr -dc 'a-z' </dev/urandom | head -c 10)
git clone https://github.com/felipesms2/docker-web.git "$FOLDER_NAME"
mv "$FOLDER_NAME"/* "$FOLDER_NAME"/.* . 2>/dev/null
rm "$FOLDER_NAME" -rf
rm setup.sh -rf