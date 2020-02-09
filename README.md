# vape-kafka-platform
For hosting kafka 2.3.0 distribution for VAPE project

# Run Kafka on local
Scripts are provided to facilitate with setting up local dev environment, they are located in *scripts* directory        

> run `sh ./scripts/vape-local-kafka-start.sh` to run a kafka broker (port 9092) and zookeeper (port 2128)        

# Setup


## Build Docker image
1. navigate to project root
2. run `docker build -t [image name] .`      
The built docker image contains kafka 2.3.0 distribution and zookeeper

## running Docker image
Zookeeper must be run prior to any broker instances

### Run Zookeeper from Docker image
> run `docker run -it --rm -d --name [name] --net=host [image id] zookeeper $zookeeper_id`      
> The above command boot up a docker container in which zookeeper runs. And all ports are exposed to host

### Run Kafka Broker from Docker image
> run `docker run -it --rm -d --name [name] --net=host [image name] broker $id`      
> The above command boot up a docker container in which broker runs. The last argument `$id` represents the broker id (1, 2, 3 ...) All ports are exposed to host

# Useful docker command

### see running container       
`docker ps`         

### list local docker images        
`docker image ls`           

### expose all ports            
`docker run --network host [image name]`        

### assign specific port to exposed port            
`docker run -p port:exposed-port [image name]`      

### assign name to a container when running         
`docker run --name [name] [image]`          

### detached mode
`docker run -d --name [name] [image]`

### use ENTRYPOINT 
`docker run -it --name [name] [image] arg1 arg2 ...`

### tail logs of running container
`docker logs -f $container_id`
