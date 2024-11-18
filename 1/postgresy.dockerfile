FROM postgres

VOLUME /var/lib/postgresql/data

ENV POSTGRES_PASSWORD=xxx

COPY init.sql /docker-entrypoint-initdb.d/

EXPOSE 5432
