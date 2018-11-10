# Microk8s-helm-jenkins

Verify microk8s is running:
```
$ kubectl cluster-info

```


Create namespace:
```
$ kubectl create -f helm/jenkins-namespace.yaml
```

Create persistent volume (folder /data is persistent on minikube)
```
$ kubectl create -f helm/jenkins-volume.yaml
```


Execute helm:
```
$ helm install --name jenkins -f helm/jenkins-values.yaml stable/jenkins --namespace jenkins-project

$ helm upgrade  jenkins -f helm/jenkins-values.yaml --namespace jenkins-project
```


Check admin password for jenkins:
```
$ printf $(kubectl get secret --namespace jenkins-project jenkins -o jsonpath="{.data.jenkins-admin-password}" | base64 --decode);echo
```

# Configure Jenkins for Kubernetes

## Kubernete confugration.

![Alt text](/helm/images/kubernetes-configuration.png?raw=false "Kubernates Configuration")

## Agent Template configuration

![Alt test](helm/images/prod-template.png?row=true "Agent tempate")
