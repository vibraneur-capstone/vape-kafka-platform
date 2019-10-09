# vape-kafka-platform
For hosting kafka 2.3.0 distribution for VAPE project

# Setup


## Build Docker image
1. navigate to project root
2. run `docker build -t [image name] .`      
The built docker image contains kafka 2.3.0 distribution and zookeeper

## running Docker image
Zookeeper must be run prior to any broker instances

### Run Zookeeper from Docker image
> run `docker run -it --name [name] --network host [image name] zookeeper`      
> The above command boot up a docker container in which zookeeper runs. And all ports are exposed to host

### Run Kafka Broker from Docker image
> run `docker run -it --name [name] --network host [image name] broker $id`      
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
