# My Humble Documentation of the Inception Project.

## Table of Contents

1. Definitions
	- What is a Virtual Machine?
	- Problematic
	- Solution: What is a Docker?
	- What is a Container?
	- What is a Docker Image?
	- What is a Dockerfile?
	- What is Docker Compose?
	- What is Docker Hub?
	- What is Docker Swarm?
	- What are Docker Volumes?
	- What is Docker Machine?
	- What is Docker Engine?
	- What is Docker Client?
	- What is Docker Daemon?

2. Docker Installation
	- Docker Installation on Ubuntu
	- Docker Installation on Windows
	- Docker Installation on Mac

3. Docker Commands
	- Docker Commands for Images
	- Docker Commands for Containers
	- Docker Commands for Dockerfile
	- Docker Commands for Docker Compose
	- Docker Commands for Docker Hub
	- Docker Commands for Docker Swarm
	- Docker Commands for Docker Machine
	- Docker Commands for Docker Engine
	- Docker Commands for Docker Client
	- Docker Commands for Docker Daemon
	- Docker Commands for Docker Registry

4. Dockerfile
	- Dockerfile Instructions
	- Dockerfile Best Practices
	- Dockerfile Example

5. Docker Compose
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




