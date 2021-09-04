docker run -d \
--name authdb-container \
--hostname authdb \
--network auth-net \
--env="MYSQL_ROOT_PASSWORD=DrinkWater4" \
-p 26257:26257 \
-p 8080:8080 \
-v auth-volume:/mysql/mysql-data \
mysql/mysql-server:latest

