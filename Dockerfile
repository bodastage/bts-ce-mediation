FROM puckel/docker-airflow:1.9.0

USER root

RUN echo "deb http://ftp.debian.org/debian testing main" | tee --append /etc/apt/sources.list.d/testing.list

RUN  apt-get update 

RUN mkdir -p /usr/share/man/man1

RUN apt-get install --no-install-recommends --no-upgrade  -y openjdk-8-jre-headless

RUN apt-get install --no-install-recommends --no-upgrade  -y postgresql-client-10

RUN apt-get install zip unzip

RUN mkdir -p /mediation  && chmod -R 777 /mediation

USER airflow

EXPOSE 8080 5555 8793