wget https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.10.4-stable.tar.xz
# docker buildx build --platform linux/amd64 -t flutter:latest ./ # MacOS ARM
docker build -t flutter:3.10.4 ./
docker tag flutter:latest krasnovvi/flutter:latest

docker login -p ******** -u ****
docker push krasnovvi/flutter:latest