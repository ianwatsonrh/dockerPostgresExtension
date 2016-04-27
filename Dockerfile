FROM postgres
RUN mkdir /sqlscripts
ADD initDB/* /docker-entrypoint-initdb.d
ADD sql/* /sqlscripts
