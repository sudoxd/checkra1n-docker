FROM ubuntu:18.04
RUN apt update && apt install -y gnupg2 ca-certificates
RUN echo "deb https://assets.checkra.in/debian /" | tee -a /etc/apt/sources.list
RUN apt-key adv --fetch-keys https://assets.checkra.in/debian/archive.key
RUN apt update && apt install -y checkra1n
RUN checkra1n --wui 0.0.0.0 1337
EXPOSE 1337