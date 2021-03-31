# Somme used cmd in my docker tutoriel posted in my channel AfriCodeCademy

curl -s ifconfig.co
logout
sudo amazone-linux-extras install docker
sudo amazon-linux-extras install docker
sudo service docker start
sudo docker version
sudo usermod -a -G docker ec2-user
docker run -p 8100:80 -d --name myProxy_2 nginx
docker info
docker version
sudo curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose 
docker-compose version
docker run -p 80:80 nginx
curl -s ifconfig.co
docker run -p 80:80 nginx
docker ps
docker ps -a
docker container ls
docker container ls -a 
docker container logs myProxy_2
docker container logs -f myProxy_2
docker exec -it myProxy_2 bash
docker ps
docker stop
docker stop myProxy_2
docker ps
docker ps -a
docker run -p 80:80 nginx --rm -d --name myProxy
docker run -p 80:80 --rm -d --name myProxy nginx
docker ps
docker stop myProxy
docker ps
docker run -p 80:80 --rm -d --name myProxy nginx
docker --help
docker ps
docker container port myProxy
docker container inspect myProxy
docker container top myProxy
kill -9 2835
sudo kill -9 2835
docker ps
docker run -p 80:80 --rm -d --name myProxy nginx
docker ps 
docker container top myProxy
docker container stats myProxy
docker container network
docker network --help
docker network create appNet
docker network ls
docker network inspect appNet
docker run -p 8100:80 -d --name myProxy --rm--network appNet nginx
docker run -p 8100:80 -d --name myProxy_2 --rm--network appNet nginx
docker rm myProxy_2
docker run -p 8100:80 -d --name myProxy_2 --rm--network appNet nginx
docker ps
docker network inspect appNet
docker run -p 3306:3306 --name myDb -d --rm--env="MYSQL_ROOT_PASSWORD=momar" mysql:5.7
docker ps
docker stop myDb 
docker run -p 3306:3306 --name myDb -d --rm--env="MYSQL_ROOT_PASSWORD=momar" --network appNetmysql:5.7
docker network inspect appNet
docker exec -it myDb bash
docker network --help
docker network disconnect appNet myProxy_2
docker network inspect appNet
docker exec -it myDb bash
docker network --help
docker network disconnect appNet myDb
docker network inspect appNet
docker ne
docker network prune
docker network ls
docker network create appNet
docker network ls
docker network --help
docker network connect appNet myProxy_2
docker network inspect appNet
docker ps
docker inspect myDb
docker volume --help
docker ps
docker stop myDb
docker rm myDb
docker volume create my_db_data
docker volume ls
docker run -p 3306:3306 --name myDb -d --rm --env="MYSQL_ROOT_PASSWORD=momar" --network appNet -v my_db_data:/var/lib/mysql mysql:5.7
docker exec -it myDb bash
docker ps
docker stop
docker stop myDb
docker rm myDb
docker run -p 3306:3306 --name myDb_2 -d --rm --env="MYSQL_ROOT_PASSWORD=momar" --network appNet -v my_db_data:/var/lib/mysql mysql:5.7
docker exec -it myDb_2 bash
docker stop myDb_2
docker ps
docker run -p 3306:3306 --name myDb_2 -d --rm --env="MYSQL_ROOT_PASSWORD=momar" --network appNet --mount source=my_db_data,destination=/var/lib/mysql mysql:5.7
docker stop myProxy_2
docker rm myProxy_2
mkdir my_local_volume
ls my_local_volume/
cd my_local_volume/
pwd
vim index.html
cd ..
docker run -p 8100:80 --name myProxy_2 -d --rm -v home/ec2-user/my_local_volume:/usr/share/nginx/htmlnginx
docker ps
docker exec -it myDb bash
docker exec -it myDb_2 bash
docker volume ls
logout
docker ps
docker stop myProxy_2
docker stop myDb_2
docker stop myProxy
docker ps
ls
mkdir custom-nginx
cd custom-nginx/
vim Dockerfile
vim index.html
ls
docker build -t my_new_nginx_image .
docker run -p 8110:80 --name my-new-nginx -d --rmmy_new_nginx_image

docker ps
docker exec -it my-new-nginx bash
cd ..
mkdir custom-mysql
cd custom-mysql/
vim init.sql
vim my-custom-mysql-dockerfiile
docker build -t my-new-db-image .
docker build -t my-new-db-image -f my-custom-mysql-dockerfiile .
docker image ls
docker run -p 3313:3306 --name my-new-mysql --rm -d my-new-db-image
docker ps
docker exec -it my-new-mysql bash
docker ps
docker stop 
docker stop
docker stop my-new-mysql
docker volume -ls
docker volume ls
docker ps
docker run -p 3313:3306 --name my-new-mysql --rm -d -v my_db_data:/var/lib/mysql my-new-db
docker image ls
docker run -p 3313:3306 --name my-new-db --rm -d -v my_db_data:/var/lib/mysql my-new-db-image
docker ps
docker stop my-new-db
docker stop my-new-nginx
docker ps
cd ..
mkdir dk-compose
cd dk-compose/
vim docker-compose.yaml
docker-compose up -d 
docker-compose config
vim docker-compose.yaml
docker volume create db_data
docker-compose config
cd ..
ls
rm -rf dk-compose/
ls
docker ps
pwd
mkdir dk-compose
cd dk-compose/
vim docker-compose.yaml
docker-compose --help
docker-compose up -d 
docker-compose logs
docker compo
docker volume ls
docker ps
cd dk-compose/
ls
docker-compose down
docker ps
docker volume ls
docker volume rm 
docker volume ls
logout
ls
ls dk-compose/
rm -rf dk-compose/
logout
docker ps
logout
mkdir dk-compose
cd dk-compose/
vim docker-compose.yaml
ls
docker-compose --help
docker-compose up -d 
docker ps
docker-compose logs
docker-compose down
docker ps
docker image ls
docker image rm
docker image rm a69f6702fdda
ls
cd ..
rm -rf dk-compose/
ls
logout
mkdir dk-compose
cd dk-compose/
vim docker-compose.yaml
ls
docker-compose --help
docker-compose up -d
docker ps
docker-compose logs
docker-compose -f logs
docker-compose logs -f
docker ps
docker compose down
docker-compose down
vim docker-compose.yaml 
docker-compose up -d
docker volume ls
docker-compose down
docker-compose rm
docker volume rm dk-compose_db_data
docker volume ls
vim docker-compose.yaml 
docker-compose ps
docker-compose rm
docker-compose up -d
curl -s ifconfig.co
docker ps
docker-compose down
docker volum ls
docker volume ls
docker volum rm dk-compose_db_data
docker volume rm dk-compose_db_data
docker image ls
docker image rm a69f6702fdda
cd ..
rm -rf dk-compose
logout
mkdir dk-compose
cd dk-compose/
vim docker-compose.yaml
ls
docker-compose --help
docker-compose up -d
docker ps
docker-compose logs
docker-compose logs -f
curl -s ifconfit.co
curl -s ifconfig.co
docker ps
docker-compose down
docker ps
docker ps -a
docker image ls
docker volume ls
docker run -p 3311:3306 --name my-new-db --network appNet -d --rm -v my_db_data:/var/lib/mysql my-new-db-image
docker ps
docker run -p 8111:8111 --name my-java-app -d -e "DB_HOST=my-new-db" -e "DB_PORT=3306" --network appNet --rm momsboy/my-demo-docker-spring-java
docker ps
docker logs my-java-app
docker ps
docker exec -it my-new-db bash
docker ps
docker stop my-new-db
docker stop my-java-app
docker ps
ls
docker image ls
ls
docker volume ls
ls
cd custom-mysql/
docker build -t my_db_img .
ls
docker build -t my_db_img -f my-custom-mysql-dockerfiile .
docker run -p 3311:3306 --name my-new-db --network appNet -d --rm -v my_db_data:/var/lib/mysql my_db_img
docker exec -it my-new-db bash
docker ps
docker stop
docker stop my_db_img
docker stop my_new_db
docker stop my-new-db
docker volume create db-data
docker build -t my_db_img -f my-custom-mysql-dockerfiile .
docker run -p 3311:3306 --name my-new-db --network appNet -d --rm -v db-data:/var/lib/mysql my_db_img
docker exec -it 
docker exec -it my-new-db bash
docker ps
docker image ls
docker image rm my_db_img
docker stop my-new-db
docker image rm my_db_img
docker image ls
docker volume ls
docker volume rm db-data
docker volume ls
docker image ls
docker ps
docker image rm fd3e471b6555
docker image ls
docker network ls
docker ps
logout
docker ps
ls
cd custom-mysql/
ls

docker build -f my-custom-mysql-dockerfiile -t my-db .

docker image ls

docker volume create my_data

docker run --name my-app-db --rm -d -p 3311:3306 -v my_data:/var/lib/mysql --network appNet my-db

docker exec -it my-app-db bash

docker ps

docker run -p 8111:8111 --name my-sping-app --network appNet -d -e "DB_HOST=my-app-db" -e "DB_PORT=3306" momsboy/my-demo-docker-spring-java

docker logs -f my-sping-app
docker ps
docker stop my-sping-app
docker stop my-app-db
docker ps
docker run -p 8115:80 --name my-angular-docker-app --rm -d momsboy/my-demo-docker-angular-app
  342  docker logs -f my-angular-docker-app
  