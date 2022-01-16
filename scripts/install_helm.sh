curl -L https://get.helm.sh/helm-v3.7.2-linux-amd64.tar.gz -o /var/tmp/helm.tar.gz

tar -zxvf /var/tmp/helm.tar.gz -C /var/tmp
mv /var/tmp/linux-amd64/helm "$HOME/App/bin"