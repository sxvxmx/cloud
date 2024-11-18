# docker/2

minikube start --driver=docker
eval $(minikube docker-env)

docker build -t backend:latest ./backend
docker build -t frontend:latest ./frontend

kubectl apply -f frontend/deployment.yaml 
kubectl apply -f frontend/service.yaml
kubectl apply -f backend/deployment.yaml
kubectl apply -f backend/service.yaml

kubectl get pods
kubectl get services

minikube service frontend-service

Test:
test string: HelLo fRom Another worLd (in browser)
output: hello, from, another, world