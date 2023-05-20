# Steps to deploy

## LoadBalancer

### System

* Update the system packages;

### Security

* Install, configure and enable the firewall;

### Load Balancer

* Install and configure the load balancer (HAProxy);

## Kubernetes

### Master

#### System

* Update the system packages;

#### Security

* Install, configure and enable the firewall;

#### Kubernetes

* Disable swap;
* Disable SELinux;
* Enable necessary kernel modules;
* Enable necessary sysctl parameters;
* Install and configure the container runtime (CRI-O);
* Install and configure the Kubernetes components;
* **Wait for the load balancer to be ready;**
* Initialize the cluster;
* Install and configure the Kubernetes networking (Flannel);

#### Addons

* Install and configure the Kubernetes dashboard;
* Install and configure the service mesh (Hashicorp Consul);
* Install and configure the secrets manager (Hashicorp Vault);
* Install and configure the ingress controller (Kong);
* Install and configure the container registry (Harbor);

### Node

#### System

* Update the system packages;

#### Security

* Install, configure and enable the firewall;

#### Kubernetes

* Disable swap;
* Disable SELinux;
* Enable necessary kernel modules;
* Enable necessary sysctl parameters;
* Install and configure the container runtime (CRI-O);
* Install and configure the Kubernetes components;
* **Wait for at least one master to be ready;**
* Join the cluster;
