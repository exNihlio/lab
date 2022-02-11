## What is this?

Infrastructure as Code for my personal self-hosted lab.

## Organization

There are three main parts to the lab infrastructure.

1. The supporting lab services. These include CI/CD, monitoring, secrets management etc.
These services are long lived, stateful and are essential to the operation of the lab itself.
They are considered critical infrastructure.

2. Next is the underlying lab hosting. This includes the virtualization hosts, and virtualization software.
Again, these services operate in support *of* the lab, and are considered to be long lived and obviously
critical infrastructure.

3. Lastly is anything operating in the lab itself. Anything operating in the lab that is not designated part of
the previous items is to be considered ephemeral and subject to deletion at any point in time.

## Service Deployment

*ongoing/WIP*

Services are hosted separately from the lab itself, as some of these components may be used by other parts of my network.
They are generally run inside of Docker containers, and deployed via docker-compose and Ansible.

Primary goals at this point are to stand up a CI/CD system, Hashicorp Vault, Prometheus+Grafana, GitLab and Atlantis.

## Lab Hosting

*ongoing/WIP*

Currently eyeing Ignite. We need something simple to quickly launch VMs that will host various experiments, whether that is
something like OpenNebula, K8s hosts, new some fancy distributed system, etc. Ignite checks a lot of boxes and it's declarative
configuration is highly attractive.
