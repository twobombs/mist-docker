FROM twobombs/deploy-nvidia-docker

# ssh service
RUN apt-get install -y docker-compose openssh-server ssh-askpass-gnome && apt-get clean all

# mist-cd script v4.1.0
RUN cd /root && wget https://github.com/mistio/mist-ce/releases/download/v4.1.1/docker-compose.yml

# prepare directories
RUN mkdir /var/lib/libvirt/images
RUN mkdir /root/.ssh

COPY run /root/run
RUN chmod 755 /root/run

EXPOSE 80

ENTRYPOINT /root/run
