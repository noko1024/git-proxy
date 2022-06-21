#!/bin/bash
git config --global --unset http.proxy
git config --global --unset https.proxy
git config --global --unset url."https://".insteadOf git://

read -p "student number :" num
read -sp "pass :" pass
echo ""

export https_proxy="http://${num}:${pass}@157.114.16.93:8080"
export http_proxy="http://${num}:${pass}@157.114.16.93:8080"

git config --global http.proxy http://${num}:${pass}@157.114.16.93:8080
git config --global https.proxy http://${num}:${pass}@157.114.16.93:80$
git config --global url."https://".insteadof git://

wget https://github.com/noko1024/GitPATLink-Client/releases/download/v1.0.0/x86_64-unknown-linux-musl.zip

unzip ~/x86_64-unknown-linux-musl.zip
chmod 755 ~/gpat-cli
git config --global credential.helper ~/gpat-cli
