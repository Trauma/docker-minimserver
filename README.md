# docker-minimserver

# Introduction

MinimServer is a new UPnP AV music server with a number of innovative features that make it easier to organize and explore your music collection. If you have a network music player that supports the UPnP AV standards (see this page), you'll get much more from your music collection if you're using MinimServer as your music server software.

# Installation

Pull the image from the docker registry e.g.

```docker pull tromatik/docker-minimserver```

or build it:  

```git clone https://github.com/Trauma/docker-minimserver.git```

```cd docker-minimserver```

```docker build --tag="$USER/docker-minimserver" .```

run your build:
```docker run -d --name=<your_container_name> --net=host -v <path_to_your_music>/media/:ro $USER/docker-minimserver:latest```

# Quick Start

Run the downloaded image (as a daemon):

```docker run -d --name=<your_container_name> --net=host -v <path_to_your_music>/media/:ro tromatik/docker-minimserver:latest```

# Configuration

Configuration is available through minimwatch program

# Shell Access


For debugging and maintenance purposes you may want access the containers shell. Either add after the run command or tun e.g.

```docker exec -it "$USER/docker-minimserver" bash  ```

or
```docker ps```
```docker exec -it <container-id> bash   ```

# Autostart the container

add the parameter --restart=always to your docker run command.
