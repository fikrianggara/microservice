# download helm versi 3
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3
# ubah hak akses agar bisa dieksekusi
chmod 700 get_helm.sh
# eksekusi get_helm.sh
sh get_helm.sh
# tambahkan repo bitnami untuk instalasi rabbitmq
helm repo add bitnami https://charts.bitnami.com/bitnami
# update repo helm
helm repo update
# install rabbitmq dengan nama my-rabbitmq dari repo bitnami ke namespace yang sesuai
# set username dan password=guest
helm install my-rabbitmq \
--set auth.username=guest,auth.password=guest,auth.erlangCookie=secretcookie bitnami/rabbitmq \
-n devops-mahir-submission-3-ns