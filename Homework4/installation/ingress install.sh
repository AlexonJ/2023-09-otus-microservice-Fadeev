#helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx/
#helm repo update
helm install ingress-nginx ingress-nginx/ingress-nginx --namespace user-crud-app-ns -f nginx-ingress.yaml
#helm upgrade ingress-nginx ingress-nginx/ingress-nginx --namespace user-crud-app-ns -f nginx-ingress.yaml
