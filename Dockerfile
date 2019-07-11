FROM twobombs/deploy-nvidia-docker

RUN apt-get install -y docker-compose openssh-server && apt-get clean all
RUN cd /root && wget https://github.com/mistio/mist-ce/releases/download/v4.1.0/docker-compose.yml

COPY run /root/run
RUN chmod 755 /root/run

EXPOSE 80

ENTRYPOINT /root/run
