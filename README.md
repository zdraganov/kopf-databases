### Example kopf operator for provisioning mysql and mongodb ###

Kubernetes manifests are located in ./manifests folder

### Share docker context from minikube ###
`$ eval $(minikube docker-env -p kopf-demo)`

### Build operator ###
`$ make build`

### Apply manifests file ###
```
$ kubectl apply -f manifests/crd.yaml
$ kubectl apply -f manifests/sa.yaml
$ kubectl apply -f manifests/binding.yaml
$ kubectl apply -f manifests/operator.yaml
```

### Apply database definitions ###
```
$ kubectl apply -f manifests/mysql.yaml
$ kubectl apply -f manifests/mongo.yaml
```

### Check if pods and services are created ###
`$ kubectl get pods,svc`
