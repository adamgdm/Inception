# My Humble Documentation of the Inception Project.

## Table of Contents

1. [Definitions](#1-definitions)
	- [General Definitions](#general-definitions)
	- [What is a Virtual Machine?](#what-is-a-virtual-machine)
	- [Problematic](#problematic)
	- [Solution: What is a Docker?](#solution-what-is-a-docker)
	- [What is a Container?](#what-is-a-container)
	- [What is a Docker Image?](#what-is-a-docker-image)
	- [What is a Dockerfile?](#what-is-a-dockerfile)
	- [What is Docker Compose?](#what-is-docker-compose)
	- [What is Docker Hub?](#what-is-docker-hub)
	- [What is Docker Swarm?](#what-is-docker-swarm)
	- [What are Docker Volumes?](#what-are-docker-volumes)
	- [What is Docker Machine?](#what-is-docker-machine)
	- [What is Docker Engine?](#what-is-docker-engine)
	- [What is Docker Client?](#what-is-docker-client)
	- [What is Docker Daemon?](#what-is-docker-daemon)

2. [Docker Installation](#2-docker-installation)
	- [Docker Installation on Mac](#docker-installation-on-mac)
	- [Docker Installation on Windows](#docker-installation-on-windows)
	- [Docker Installation on Ubuntu](#docker-installation-on-ubuntu)

3. Dockerfile
	- Dockerfile Instructions
	- Dockerfile Best Practices
	- Dockerfile Example

4. Docker Compose
	- What is Docker Compose?

## 1. Definitions

#### General Definitions:

### What is a Virtual Machine?
A virtual machine, VM for short, is an emulation of a computer system on a physical computer in orde to emulate the functionality of another seperate computer. This allows us to run multiple operating systems on a single physical machine. 

The benefits of using a virtual machine are numerous, for example, we can run multiple operating systems on a single physical machine, allowing us to run software that is not compatible with our current operating system. We can also test software on multiple operating systems without having to buy multiple physical machines... 

### Problematic

While the benefits of using a virtual machine are numerous, there are also some drawbacks. For example, virtual machines are not as efficient as running software on a physical machine. This is because the virtual machine has to emulate the hardware of the physical machine, which is not as efficient as running the software directly on the physical machine. VMs are also slow to boot up, and require a lot of memory to run.

### Solution: What is a Docker?

The solution to the problematic of virtual machines is a Docker. While VM is virtualization of hardware, Docker is virtualization of operating system. It is a software containerization (We'll understand what containerization means later on) platform that allows us to run software in containers. 

In simpler terms, Docker allows and provides a way to package and run applications with their dependencies in a consistent and isolated environment, making it easier to develop, test, deploy and scale applications.

### What is a Container?

Containers are applications packaged with their depenedencies such as libraries, frameworks, etc. in an isolated environment. 

Containers are Processes, not Virtual Machines.

Containers are isolated from each other and from the host machine, but they share the same kernel with other containers.

### What is a Docker Image?

Much like Snapshots of a VM, a Docker Image is a read-only template that contains a set of instructions for creating a Docker Container in a specific state at a particular point of time.

Any changes made to a Docker Image will not affect the original image, but will just create another image layer on top of it.

### What is a Dockerfile?

Compared to Makefiles, Dockerfiles are also text-files that contain a set of commands and instructions for building a specific Docker Image. These instructions define the steps that are needed to set up the environment, install dependencies, configure the image, run the application, etc.

### What is Docker Compose?

Docker compose is a tool that allows for defining and running multi-container Docker applications. With Docker Compose, we can use a YAML file (file written with a language called YAML) to configure our application's services. Then, with a single command, we can create and start all the services from our configuration. This tool makes it super easy to run multiple Docker containers at once. 

It is important to note that Docker Compose is not a production-grade tool, and should not be used in production. It is only meant to be used for development and testing purposes.

### What is Docker Hub?

Docker Hub is a public container registry provided by Docker, Inc. It's a cloud-based service that serves as a central hub for storing and sharing Docker images. Developers use Docker Hub to upload (push) and download (pull) Docker images, making it a convenient and widely used platform for sharing containerized applications and components.

### What is Docker Swarm?

Docker swarm is a clustering (practice of combining multiple computers together to work as a single system) and orchestration (practice of automating the deployment, management, scaling, networking, and availability of containerized applications) tool for Docker containers. It allows for the creation and management of a cluster of Docker Nodes (Individual machines that run Docker) turning them into a single virtual Docker host.

### What are Docker Volumes?

Volumes are a way to store data in Docker containers. They are a special type of directory in a container that is stored outside of the Union File System and are used to persist data from a container. Similarly to a USB drive, volumes are mounted into containers and are accessible from within the container but are stored outside of the container's file system.

### What is Docker Machine?

Docker Machine is a utility that simplifies the installation and configuation of Docker on a virtual hosts. It allows ut to manage these hosts effortlessly, allowing us to create, start, stop and restart hosts, upgrade Docker, and a lot more.

### What is Docker Engine?

Much like a supervisor in a VM, Docker Engine is the core of Docker. It is a client-server application that builds and runs the Docker containers. It is a lightweight runtime and tooling that manages containers, images, volumes, and networks. It is the most important component of Docker and its base layer, and is responsible for creating and running Docker containers.

### What is Docker Client?

Docker Client, CLI for short, is a command-line tool that allows us to interact with the Docker Engine. It is the primary way that we interact with Docker. It sends commands to the Docker Daemon (We'll understand what a Docker Daemon in the next definition) and instructs it to perform tasks such as building, running, and distributing Docker containers.

### What is Docker Daemon?

Docker Daemon, dockerd for short, is a persistent background process that manages Docker containers on a host machine. It is responsible for listening to Docker API requests and managing Docker objects such as images, containers, networks, and volumes. It is actively managing and coordinating the activities of Docker containers.

## 2. Docker Installation

### Docker Installation on Mac

1. Download Docker Desktop for Mac from [here](https://hub.docker.com/editions/community/docker-ce-desktop-mac/).

2. Double-click Docker.dmg to open the installer, then drag Moby the whale to the Applications folder.

3. Follow the instructions on the installation wizard to authorize the installer and proceed with the install.

4. When the installation is successful, click the whale icon in the menu bar and select About Docker Desktop to verify that you have the latest version.

### Docker Installation on Windows

1. Download Docker Desktop for Windows from [here](https://hub.docker.com/editions/community/docker-ce-desktop-windows/).

2. Double-click Docker Desktop Installer.exe to run the installer.

3. Follow the instructions on the installation wizard to authorize the installer and proceed with the install.

4. When the installation is successful, click the whale icon in the Notifications area and select About Docker Desktop to verify that you have the latest version.

### Docker Installation on Ubuntu

1. Update the apt package index and install packages to allow apt to use a repository over HTTPS:

```
$ sudo apt-get update

$ sudo apt-get install \
	apt-transport-https \
	ca-certificates \
	curl \
	gnupg \
	lsb-release
```

2. Add Docker’s official GPG key:

```
$ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
```

3. Use the following command to set up the stable repository:

```
$ echo \
	"deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
	$(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
```

4. Update the apt package index, and install the latest version of Docker Engine and containerd:

```
$ sudo apt-get update

$ sudo apt-get install docker-ce docker-ce-cli containerd.io
```

5. Verify that Docker Engine is installed correctly by running the hello-world image:

```
$ sudo docker run hello-world
```

## 3. Dockerfile

### Dockerfile Instructions

As mentioned earlier, Dockerfiles are text-files that contain a set of commands and instructions for building a specific Docker Image. These instructions define the steps that are needed to set up the environment, install dependencies, configure the image, run the application, etc.

Basically, They are the recipe for building a Docker Image.

To write a Dockerfile, we need to use a set of instructions. These instructions are used to build a Docker Image. There are two types of instructions: general instructions and specific instructions.

General instructions are instructions that are used to set up the environment, install dependencies, etc. These instructions are not specific to Docker, and can be used in other contexts as well.

Examples of general instructions are:

- FROM
- RUN
- COPY
- ADD
- ENV
- WORKDIR

Specific instructions are instructions that are specific to Docker. These instructions are used to build a Docker Image.

Examples of specific instructions are:

- EXPOSE
- CMD
- ENTRYPOINT
- VOLUME

###### A basic Dockerfile should contain the following instructions:

##### Specify the base image
```
FROM *Specifies the base image*
```

##### Set the working directory
```
WORKDIR *Sets the working directory*
```

##### Copy the files
```
COPY *Copies files from the host machine to the container*
```

##### Install dependencies
```
RUN *Installs dependencies*
```

##### Expose the port
```
EXPOSE *Exposes the port*
```

##### Set the entrypoint /*Entrypoint is the command that is executed when the container is started*/
```
ENTRYPOINT *Sets the entrypoint*
```

##### Set the command /*Command is the command that is executed when the container is started*/
```
CMD *Sets the command*
```

##### Build Your Image
```
docker build -t <image-name> <path-to-dockerfile>
```

##### Run Your Image
```
docker run <image-name>
```

To highlight the difference between CMD and ENTRYPOINT, It should be noted that CMD sets default command and/or parameters, which can be overridden when running the container while ENTRYPOINT sets the main command and parameters that cannot be easily overridden when running the container.

Our File should look something like this:

```
# We'll take the official Node.js image as our base image
FROM node:14.17.0-alpine3.13 
WORKDIR /app

COPY package.json .
RUN npm install
EXPOSE 8000

CMD ["npm", "start"]
```

in bash:
```
$ docker build -t my-app .
$ docker run -p 8000:8000 my-app
```


### Dockerfile Best Practices





