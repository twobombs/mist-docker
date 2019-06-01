# mist-docker
Mist Virtualisation platform on Docker Inception Containers

start container with your favorite docker orchestrator with  the volume 

"-v /var/run/docker.sock:/var/run/docker.sock:ro" added

it creates an interface with the underlying docker container engine.

https://www.youtube.com/watch?v=NNm8f3tIfAA

once the containers are all started create an admin user in the api container

docker-compose exec api ./bin/adduser --admin admin@example.com -p 1234
