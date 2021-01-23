#! /bin/bash

docker run -dt --name MariaDB5 -p 10105:3306 tekappsrl/cent-lab_mariadb:10.5
docker run -dt --name MariaDB4 -p 10104:3306 tekappsrl/cent-lab_mariadb:10.4
docker run -dt --name MariaDB3 -p 10103:3306 tekappsrl/cent-lab_mariadb:10.3
docker run -dt --name SQLServer2019 -p 10102:1433 tekappsrl/cent-lab_sqlserver:2019-latest
docker run -dt --name SQLServer2017 -p 10101:1433 tekappsrl/cent-lab_sqlserver:2017-latest
