### Funzionalità


Permette di accedere rapidamente a un collaudato ambiente di test e monitoraggio.


Podman:

~~~
curl -s https://raw.githubusercontent.com/Tekapp-SRL/Cent-LAB/master/install.sh | bash
~~~

Docker:

~~~
curl -s https://raw.githubusercontent.com/Tekapp-SRL/Cent-LAB/master/install-docker.sh | bash
~~~




## Immagini su DockerHub

MariaDB - Adventure Works -> https://hub.docker.com/repository/docker/tekappsrl/cent-lab_mariadb

Sql Server - Adventure Works -> https://hub.docker.com/repository/docker/tekappsrl/cent-lab_sqlserver


| Image  | Podman | Docker | CI |
| ------ | ------ | ------ | ------ |
| Mariadb:latest | podman pull tekappsrl/cent-lab_mariadb:latest| docker pull tekappsrl/cent-lab_mariadb:latest| ![CI docker-image-mariadb](https://github.com/Tekapp-SRL/Cent-LAB/workflows/CI%20docker-image-mariadb/badge.svg) |
| Mariadb:10.5 | podman pull tekappsrl/cent-lab_mariadb:10.5  |  docker pull tekappsrl/cent-lab_mariadb:10.5 | ![CI docker-image-mariadb10.5](https://github.com/Tekapp-SRL/Cent-LAB/workflows/CI%20docker-image-mariadb10.5/badge.svg) | 
| Mariadb:10.4 | podman pull tekappsrl/cent-lab_mariadb:10.4 | docker pull tekappsrl/cent-lab_mariadb:10.4 | ![CI docker-image-mariadb10.4](https://github.com/Tekapp-SRL/Cent-LAB/workflows/CI%20docker-image-mariadb10.4/badge.svg) |
| Mariadb:10.3 | podman pull tekappsrl/cent-lab_mariadb:10.3 | docker pull tekappsrl/cent-lab_mariadb:10.3 | ![CI docker-image-mariadb10.3](https://github.com/Tekapp-SRL/Cent-LAB/workflows/CI%20docker-image-mariadb10.3/badge.svg) |
| SqlServer:latest | podman pull tekappsrl/cent-lab_sqlserver:latest  | docker pull tekappsrl/cent-lab_sqlserver:latest | ![CI docker-image-sqlserver](https://github.com/Tekapp-SRL/Cent-LAB/workflows/CI%20docker-image-sqlserver/badge.svg) |
| SqlServer:2019-latest | podman pull tekappsrl/cent-lab_sqlserver:2019-latest  | docker pull tekappsrl/cent-lab_sqlserver:2019-latest | ![CI docker-image-sqlserver2019](https://github.com/Tekapp-SRL/Cent-LAB/workflows/CI%20docker-image-sqlserver2019/badge.svg) |
| SqlServer:2017-latest | podman pull tekappsrl/cent-lab_sqlserver:2017-latest | docker pull tekappsrl/cent-lab_sqlserver:2017-latest | ![CI docker-image-sqlserver2017](https://github.com/Tekapp-SRL/Cent-LAB/workflows/CI%20docker-image-sqlserver2017/badge.svg) |

