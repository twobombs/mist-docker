FROM twobombs/deploy-nvidia-docker
RUN apt-get install -y docker-compose && apt-get clean all
RUN cd /root && wget https://github.com/mistio/mist-ce/releases/download/v4.1.0/docker-compose.yml

# after init
# RUN cd /root docker-compose up -d && ./bin/adduser --admin admin@example.com -p1234

COPY run /root/run
RUN chmod 755 /root/run
