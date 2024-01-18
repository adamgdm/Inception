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
	- What is Docker Machine?
	- What is Docker Engine?
	- What is Docker Client?
	- What is Docker Daemon?
	- What is Docker Registry?

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


