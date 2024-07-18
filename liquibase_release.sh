docker build myapp -f myapp/Dockerfile.liquibase -t kargocmm.azurecr.io/kargo-test/myapp-liquibase:$1
docker push kargocmm.azurecr.io/kargo-test/myapp-liquibase:$1