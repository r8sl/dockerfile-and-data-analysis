FROM mysql:latest

ENV MYSQL_ROOT_PASSWORD=4291149
ENV MYSQL_DATABASE=pamm_database

WORKDIR /var/lib/mysql

COPY ./databasestudents.sql /docker-entrypoint-initdb.d/

EXPOSE 3306

CMD ["mysqld"]
