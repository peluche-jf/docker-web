mkdir -p resources/config
sudo apt update && sudo apt install git -y #verificar se ja existe e pular
FOLDER_NAME=$(tr -dc 'a-z' </dev/urandom | head -c 10)
git clone https://github.com/felipesms2/docker-web.git "$FOLDER_NAME"
sudo chmod -R 777 . 
mv "$FOLDER_NAME"/* "$FOLDER_NAME"/.* . 2>/dev/null
rm "$FOLDER_NAME" -rf
mv -f ports.conf resources/config/
mv -f 000-default.conf resources/config/
mv -f envvars resources/config/
rm setup.sh -rf
