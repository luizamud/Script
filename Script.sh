#!/bin/bash

#Pergunta sobre poder apagar os diretorios Pasta pessoal
echo "Sera apagado todos os arquivos do Desktop! Deseja Prosseguir (S / N)"
read RETORNO
test "$RETORNO" = "N" && exit
sudo rm
echo "Apagando arquivo de configuração"
sudo rm ~/.config/user-dirs.dirs
echo "Criando arquivo de configuração"
echo "# This file is written by xdg-user-dirs-update
# If you want to change or add directories, just edit the line you're
# interested in. All local changes will be retained on the next run.
# Format is XDG_xxx_DIR="$HOME/yyy", where yyy is a shell-escaped
# homedir-relative path, or XDG_xxx_DIR="/yyy", where /yyy is an
# absolute path. No other format is supported.
# 
XDG_DESKTOP_DIR="$HOME/Desktop"
XDG_DOWNLOAD_DIR="$HOME/Downloads"
XDG_TEMPLATES_DIR="$HOME/Templates"
XDG_PUBLICSHARE_DIR="$HOME/Publicshare"
XDG_DOCUMENTS_DIR="$HOME/Documents"
XDG_MUSIC_DIR="$HOME/Music"
XDG_PICTURES_DIR="$HOME/Pictures"
XDG_VIDEOS_DIR="$HOME/Videos"
" >> ~/.config/user-dirs.dirs
sudo rm -rf  "Documentos" "Imagens" "Música" "Público" "Vídeos" "Àrea de Trabalho"
echo "Criando nova arvore de diretorios"
mkdir "Desktop" "Downloads" "Templates" "Publicshare" "Documents" "Music" "Pictures" "Videos"

echo "Atualizando confguracao do sistema"
xdg-user-dirs-update
echo "APAGANDO DIRETORIOS"
sudo rm -rf  "Documentos" "Imagens" "Música" "Público" "Vídeos" "Àrea de Trabalho"
echo "[100%] Sucess"
echo "Reniciando Computador"
sudo reboot