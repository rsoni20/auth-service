docker run \
--detach \
--name mysql-container \
--network auth-net \
--env="MYSQL_ROOT_PASSWORD=DrinkWater4!" \
--publish 6603:3306 \
--volume auth-volume:/mysql/ -data \
mysql