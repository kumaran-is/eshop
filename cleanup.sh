#!/bin/bash
# chmod +x cleanup.sh
# ./cleanup.sh
# List your container names here
#declare -a container_names=("springboot3-microservices_product-api_1" "springboot3-microservices_apigateway_1" "springboot3-microservices_config-server_1" "springboot3-microservices_service-discovery_1")

#for name in "${container_names[@]}"
#do
#    container_id=$(docker ps -aqf "name=$name")

#    if [ ! -z "$container_id" ]; then
#        echo "Stopping and removing container: $name"
#        docker stop $container_id
#        docker rm $container_id
#    else
#        echo "No running container found for: $name"
#    fi
#done

# List your image names here
declare -a image_names=("eshop/product-api:latest" "eshop/apigateway:latest" "eshop/service-discovery:latest")

for image in "${image_names[@]}"
do
    echo "Removing image: $image"
    docker rmi $image
done
