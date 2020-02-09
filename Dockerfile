FROM ubuntu:18.04
RUN apt update && apt install -y gnupg2 ca-certificates
RUN echo "deb https://assets.checkra.in/debian /" | tee -a /etc/apt/sources.list
RUN apt-key adv --fetch-keys https://assets.checkra.in/debian/archive.key
RUN apt update && apt install -y checkra1n
#RUN wget https://assets.checkra.in/downloads/linux/cli/x86_64/eda98d55f500a9de75aee4e7179231ed828ac2f5c7f99c87442936d5af4514a4/checkra1n
#ADD /sudoers.txt /etc/sudoers
#RUN chmod 440 /etc/sudoers
RUN checkra1n --wui 0.0.0.0 1337
EXPOSE 1337