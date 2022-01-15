
# downloading the k3s install script
curl -L https://get.k3s.io -o /var/tmp/k3s

# running the downloaded script with kubeconfig 
chmod +x /var/tmp/k3s
K3S_KUBECONFIG_MODE="644" INSTALL_K3S_EXEC="server --disable=traefik" sh /var/tmp/k3s
