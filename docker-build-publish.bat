@echo off
set IMAGE_NAME=qbittorrent
set IMAGE_TAG=latest
set IMAGE_REPO=tuxick/qbittorrent

docker build -t %IMAGE_NAME%:%IMAGE_TAG% .
docker tag %IMAGE_NAME%:%IMAGE_TAG% %IMAGE_REPO%:%IMAGE_TAG%
docker push %IMAGE_REPO%:%IMAGE_TAG%