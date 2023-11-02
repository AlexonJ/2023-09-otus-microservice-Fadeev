
# Install Prometheus ------------------------------------------------------------------------------------------------
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts

helm install prometheus prometheus-community/kube-prometheus-stack --namespace=user-crud-app-ns -f prometheus.yaml
# Install Prometheus ------------------------------------------------------------------------------------------------

# Uninstall Prometheus ------------------------------------------------------------------------------------------------
helm uninstall prometheus --namespace user-crud-app-ns
# Uninstall Prometheus ------------------------------------------------------------------------------------------------

# Update Prometheus ------------------------------------------------------------------------------------------------
helm upgrade prometheus prometheus-community/kube-prometheus-stack --namespace=user-crud-app-ns -f prometheus_new.yaml
# Update Prometheus ------------------------------------------------------------------------------------------------


kubectl apply -f rs.yaml -f service.yaml -f service-monitor.yaml

minikube.exe service metrics-demo

kubectl port-forward service/prometheus-operated  9090

ab -n 500 -c 50 http://localhost:8090/api/a # поменять урл на реальный (выхлоп minikube.exe service metrics-demo)

FOR /L %N IN () DO c:\data\otus\msa\Apache24\bin\ab.exe -n 50 -c 10 http://localhost:8090/api/a # аналогично поменять урл

ab -n 500 -c 50 http://localhost:8090/api/a # поменять урл на реальный (выхлоп minikube.exe service metrics-demo)


login: admin
password: prom-operator

https://github.com/kubernetes/ingress-nginx/blob/main/docs/user-guide/monitoring.md

https://github.com/kubernetes/ingress-nginx/issues/5755