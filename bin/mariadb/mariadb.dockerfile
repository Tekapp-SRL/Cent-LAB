FROM mariadb:10.3

ADD sql/ /docker-entrypoint-initdb.d

ENV MYSQL_ROOT_PASSWORD Tekapp!
ENV MYSQL_DATABASE adventureworks
ENV MYSQL_USER Tekapp
ENV MYSQL_PASSWORD Tekapp!

RUN apt-get update && apt-get -y install vim && apt-get install iputils-ping

EXPOSE 3306

CMD ["mysqld"]
