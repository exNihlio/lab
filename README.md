## What is this?

Infrastructure as Code for my personal self-hosted lab.

## Organization

There are three main parts to the lab infrastructure.

1. The supporting lab services. These include CI/CD, monitoring, secrets management etc.
These services are long lived, stateful and are essential to the operation of the lab itself.
They are considered critical infrastructure.

2. Next is the underlying lab hosting. This includes the virtualization hosts, and virtualization software.
Again, these services operate in support *of* the lab, and are considered to be long lived and 
obviously critical infrastructure.

3. Lastly is anything operating in the lab itself. Anything operating in the lab that is not designated
part of the previous items is to be considered ephemeral and subject to deletion at any point in time.

## Service Deployment

Services are hosted separately from the lab itself, as some of these components may be used by other
parts of my network.

They are generally run inside of Docker containers, and deployed via docker-compose and Ansible.

Curently we have Vault and Gitea running as systemd services. Portainer, Docker Registry, and Nginx
are running in Docker. Portainer and Docker Registry's usage is obvious. Nginx is for mirroring
packages, similar to Docker registry. With source control in place and Vault, we're moving on to
deploying Jenkins next.

## Lab Hosting

*ongoing/WIP*

Currently eyeing Ignite. We need something simple to quickly launch VMs that will host various experiments, whether that is
something like OpenNebula, K8s hosts, new some fancy distributed system, etc. Ignite checks a lot of boxes and it's declarative
configuration is highly attractive.
