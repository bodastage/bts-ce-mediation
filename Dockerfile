FROM puckel/docker-airflow:1.9.0

USER root

RUN add-apt-repository ppa:openjdk-r/ppa
RUN apt-get update
RUN apt-get install openjdk-8-jre

RUN apt-get install --no-install-recommends --no-upgrade  -y postgresql-client-10

RUN apt-get install zip unzip

RUN mkdir -p /mediation  && chmod -R 777 /mediation

USER airflow

EXPOSE 8080 5555 8793