# Docker Image

### This docker image includes the following to get up and running quickly:
- Jenkins Server
- GitBash
- NodeJS
- AWS CLI

## Quick Start

#### First, Install Docker [here](https://www.docker.com). 


#### Then Process with the following commands.
```aidl

## This will create the docker network
./setup.sh

## This will create the custom docker image which includes the above.
./build.sh

## This will run the custom image created in step 2.
./setup.sh
```

*A Few Notes:*
- This uses the default image provided by the jenkins/jenins:lts image.
- The dockerfile assumes root to perform installation, if that doesn't work for you, build it from os level up.
- jenkins user gains appropriate permissions to run npm and apt-get commands.