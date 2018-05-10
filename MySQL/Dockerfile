FROM mysql
COPY ./ /opt/code
WORKDIR /opt/code
ENV MYSQL_ROOT_PASSWORD=mysecretpass
MD /bin/sh -c 'mysql -u root -p $MYSQL_ROOT_PASSWORD < SQL/MySQL_DDL.sql
CMD /bin/sh -c 'mysql -u root -p $MYSQL_ROOT_PASSWORD < SQL/MySQL_DML.sql
EXPOSE 3306 3306 
