# Kubernetes Deploy

This repository presents a serie of scripts to deploy a Kubernetes cluster on
any cluster.

## Requirements

### Host

* [Ansible](https://www.ansible.com/)

### Master

* 2 GB RAM
* 2 vCPU
* 20 GB Disk
* OS:
    * CentOS
    * AlmaLinux
    * Fedora
    * Debian
    * Ubuntu

### Node

* 2 GB RAM
* 2 vCPU
* 20 GB Disk
* OS:
    * CentOS
    * AlmaLinux
    * Fedora
    * Debian
    * Ubuntu

## Usage

For convenience, the repository contains a `Makefile` to run the scripts.

```bash
# Configure hosts.ini

vi hosts.ini  # Edit the file to add your hosts

# Trust the hosts

make trust

# Run the playbook

make deploy
```
