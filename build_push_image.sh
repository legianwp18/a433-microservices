# membuat Docker image
docker build -t item-app:v1 .
# melihat daftar image
docker images
# mengubah nama image
docker tag item-app:v1 legianmland/item-app:latest
# Login ke Docker Hub
docker login --username legianmland --password-stdin < my_password.txt
# Mengunggah image ke dockerhub
docker push legianmland/item-app:latest