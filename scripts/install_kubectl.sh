#! /bin/bash

v1.23.1
# To get the latest version
# curl -L -s https://dl.k8s.io/release/stable.txt

# To download the lastest kubectl version
# curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"

# To download a specific kubectl version
curl -L "https://dl.k8s.io/release/v1.23.1/bin/linux/amd64/kubectl" -o "$HOME/App/bin/kubectl"

chmod +x "$HOME/App/bin/kubectl"