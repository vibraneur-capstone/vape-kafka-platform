# vape-kafka-platform
For hosting kafka 2.3.0 distribution for VAPE project

TODO: dockerize this kafka

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