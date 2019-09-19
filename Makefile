CLUSTER_NAME=kopf-demo
IMAGE_NAME=zdraganov/op-db:latest

build:
	docker image build -t ${IMAGE_NAME} .

start_cluster:
	minikube start -p ${CLUSTER_NAME}

stop_cluster:
	minikube stop -p ${CLUSTER_NAME}
