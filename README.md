# mist-docker

Mist.io Virtualisation platform on Docker Inception Containers

start container with your favorite orchestrator with the volume 

"-v /var/run/docker.sock:/var/run/docker.sock:ro" added

it creates an interface with the hosts' docker container engine.

https://www.youtube.com/watch?v=NNm8f3tIfAA

Once the containers are all started create an admin user in the 'api' container

eg: docker-compose exec api ./bin/adduser --admin admin@example.com -p 1234 so you can login to the MIST.io page

Open in the WebVNC UI at port 6080 the virtual manager for Qemu GUI and connect to the Host.

( password is default 00000000 )

The MIST.io container is also prepared to host VMs by libvirtd & ssh via IP

The MIST.io UI will be exposed to port 80 on the Host, as it is deployed to the host root.

Add your public key to authorized_keys in /root/.ssh or map it on the Host

This works with Docker CLI, Rancher 1.x, 2.x and K8s.

docker run -d -p80:80 -p6080:6080 -v /var/run/docker.sock:/var/run/docker.sock:ro twobombs/mist-docker
