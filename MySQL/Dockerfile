FROM mysql:5.7
ENV MYSQL_ROOT_PASSWORD=mysecretpass
ENV MYSQL_DATABASE=movie_db
ENV MYSQL_USER=movie_user
ENV MYSQL_PASSWORD=movie
EXPOSE 3306 
COPY ./SQL/database.sql /docker-entrypoint-initdb.d/
CMD ["mysqld"]
