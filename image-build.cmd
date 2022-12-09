mkdir 02-Dockerfiles/apache/v1 -p
ls
cd 02-Dockerfiles/
ls
cd apache/
ls
cd v1/
ls
vim Dockerfile
cat Dockerfile
docker run -it ubuntu:16.04
docker ps
curl 172.17.0.2
ls
docker ps
ls
cat Dockerfile
docker build -t myapache:v1 .
docker images
docker run -d myapache:v1
docker ps
cd
docker inspect 2121ca788dc5
docker inspect --format '{{.Name}} {{.State.Running}} {{.NetworkSettings.IPAddress}}' 2121ca788dc5
docker inspect --format '{{.Name}} {{.State.Running}} {{.NetworkSettings.IPAddress}}' ${docker ps -q}
docker inspect --format '{{.Name}} {{.State.Running}} {{.NetworkSettings.IPAddress}}' $(docker ps -q)
curl -v 172.17.0.3
docker ps
curl -v 172.17.0.3:80
docker ps
docker run -d -p 8081:80 myapache:v1
docker ps
ls
cd -
ls
cd ..
ls
cp -rf v1 v2
ls
cd v2/
ls
vim Dockerfile
docker build -t myapache:v2 .
docker images
docker run -d myapache:v2
docker ps
ls
cd ..
ls
cp -rf v2 v3
ls
cd v3/
ls
vim index.html
ls
vim Dockerfile
ls
docker build -t myapache:v3 .
docker run -d myapache:v3
docker inspect --format '{{.Name}} {{.State.Running}} {{.NetworkSettings.IPAddress}}' $(docker ps -q)
curl 172.17.0.6
ls
docker ps
docker run -d -P myapache:v3
docker ps
ls
cd ..
ls
cd ..
ls
cd ..
ls
cd 02-Dockerfiles/
ls
cp -rf v1 v2
ls
cd v2/
ls
vim Dockerfile
docker build -t myapache:v2 .
docker images
docker run -d myapache:v2
docker ps
ls
cd ..
ls
cp -rf v2 v3
ls
cd v3/
ls
vim index.html
ls
vim Dockerfile
ls
docker build -t myapache:v3 .
docker run -d myapache:v3
docker inspect --format '{{.Name}} {{.State.Running}} {{.NetworkSettings.IPAddress}}' $(docker ps -q)
curl 172.17.0.6
ls
docker ps
docker run -d -P myapache:v3
docker ps
ls
cd ..
ls
cd ..
ls
cd ..
ls
cd 02-Dockerfiles/
ls
cp -rf v1 v2
ls
cd v2/
ls
vim Dockerfile
docker build -t myapache:v2 .
docker images
docker run -d myapache:v2
docker ps
ls
cd ..
ls
cp -rf v2 v3
ls
cd v3/
ls
vim index.html
ls
vim Dockerfile
ls
docker build -t myapache:v3 .
docker run -d myapache:v3
docker inspect --format '{{.Name}} {{.State.Running}} {{.NetworkSettings.IPAddress}}' $(docker ps -q)
curl 172.17.0.6
ls
docker ps
docker run -d -P myapache:v3
docker ps
ls
cd ..
ls
cd ..
ls
cd ..
ls
cd 02-Dockerfiles/
ls
cd apache/
ls
cp -rf v3 v4
ls
cd v4/
ls
mv Dockerfile mydockerfile
ls
vim index.html
ls
docker build -t myapache:v4 .
docker build -t myapache:v4 -f mydockerfile .
docker run -d -P myapache:v4
