docker run --name docker_runtime \
    --rm  \
    --detach \
    -p 8088:8080 \
    -p 50000:50000 \
    -v /Users/Shared/jenkins_home/volume:/opt/jenkins_home \
    docker_runtime