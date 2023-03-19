#!/bin/sh

echo "При запуске скрипта произойдёт скачивание файла favicon.ico"
echo "Input site name Format:example.com : $1"
wget ${1}/favicon.ico
