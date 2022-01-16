setup secret for pihole password
```bash
kubectl create --namespace dns secret generic pihole --from-file=<key-name>=<file-name>
```