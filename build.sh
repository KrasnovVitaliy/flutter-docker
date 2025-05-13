wget https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.29.3-stable.tar.xz
# docker buildx build --platform linux/amd64 -t flutter:latest ./ # MacOS ARM
docker build -t flutter:3.29.3 ./
docker tag flutter:3.29.3 krasnovvi/flutter:3.29.3
docker tag flutter:3.29.3 krasnovvi/flutter:latest

docker login -p **** -u ****
docker push krasnovvi/flutter:3.29.3
docker push krasnovvi/flutter:latest