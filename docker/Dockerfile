FROM postgres:9.6

ENV POSTGRES_USER postgres
ENV POSTGRES_PASSWORD postgres
ENV POSTGRES_DB test_database

COPY ./docker/db/sample_data /var/lib/postgres/data
COPY ./docker/db/sql /docker-entrypoint-initdb.d

EXPOSE 5036
