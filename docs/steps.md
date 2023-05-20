# Steps to deploy

## Load Balancer

### System

* Update the system packages;

### Security

* Install, configure and enable the firewall;

### Load Balancer

* Enable necessary SELinux permissions;
* Install and configure the load balancer (HAProxy);

## Master

### System

* Update the system packages;

### Security

* Install, configure and enable the firewall;

### Kubernetes

* Disable swap;
* Disable SELinux;
* Enable necessary kernel modules;
* Enable necessary sysctl parameters;
* Install and configure the container runtime (CRI-O);
* Install and configure the Kubernetes components (kubeadm, kubelet and kubectl);

### Master

* **Wait for the load balancer to be ready;**
* Initialize the cluster;
* Install and configure the Kubernetes networking (Flannel);
* **Wait fot at least one worker to be ready;**

## Worker

### System

* Update the system packages;

### Security

* Install, configure and enable the firewall;

### Kubernetes

* Disable swap;
* Disable SELinux;
* Enable necessary kernel modules;
* Enable necessary sysctl parameters;
* Install and configure the container runtime (CRI-O);
* Install and configure the Kubernetes components (kubeadm, kubelet and kubectl);

### Worker

* **Wait for at least one master to be ready;**
* Join the cluster;

## Control Plane

### Addons

* Install and configure the Kubernetes dashboard;
* Install and configure the service mesh (Hashicorp Consul);
* Install and configure the secrets manager (Hashicorp Vault);
* Install and configure the ingress controller (Kong);
* Install and configure the container registry (Harbor);
