FROM twobombs/deploy-nvidia-docker
RUN apt-get install -y docker-compose openssh-server && apt-get clean all
RUN cd /root && wget https://github.com/mistio/mist-ce/releases/download/v4.1.0/docker-compose.yml

# create root login pair ( for KVM host access in the container )
# deploy-nvidia-docker has native libvirt going for it. 
# RUN ssh-keygen -h -G /root/.ssh/id_rsa

# after init
RUN cd /root docker-compose up -d && ./bin/adduser --admin admin@example.com -p 1234

COPY run /root/run
RUN chmod 755 /root/run
