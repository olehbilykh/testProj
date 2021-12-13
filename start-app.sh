docker-compose -f docker-compose.yml -f docker-compose.override.yml up -d
docker-compose -f docker-compose.yml -f docker-compose.override.yml down
az login
az group create --name myResourceGroup --location westeurope
az acr create --resource-group myResourceGroup --name myshoppingacr --sku Basic
az acr update -n myshoppingacr --admin-enabled true
az acr login --name myshoppingacr
docker tag shoppingapi:latest myshoppingacr.azurecr.io/shoppingapi:v1
docker tag shoppingclient:latest myshoppingacr.azurecr.io/shoppingclient:v1
docker push myshoppingacr.azurecr.io/shoppingapi:v1
docker push myshoppingacr.azurecr.io/shoppingclient:v1
az aks create --resource-group myResourceGroup --name myAKSCluster --node-count 1 --generate-ssh-keys --attach-acr myshoppingacr
az aks get-credentials --resource-group myResourceGroup --name myAKSCluster
kubectl create secret docker-registry acr-secret --docker-server=myshoppingacr.azurecr.io --docker-username=myshoppingacr --docker-password=5eWkKWVXlmG5ycC7pLT/dncvAXhAxJ2/ --docker-email=oleh.nilykh@student.tuke.sk
#kubectl apply -f .\aks\
kubectl apply -f ./aks