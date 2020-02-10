FROM debian:stable
EXPOSE 1337
ENV TERM=xterm
RUN apt update && apt install -y gnupg2 ca-certificates
RUN echo "deb https://assets.checkra.in/debian /" | tee -a /etc/apt/sources.list
RUN apt-key adv --fetch-keys https://assets.checkra.in/debian/archive.key
RUN apt update && apt install -y checkra1n
COPY start.sh .
RUN chmod +x start.sh
CMD ./start.sh > /dev/null 2>&1