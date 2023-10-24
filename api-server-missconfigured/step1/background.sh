sed -i -e 's/metadata:/metadatal;/g' /etc/kubernetes/manifests/kube-apiserver.yaml
sed -i -e 's/--etcd-servers=https:\/\/127.0.0.1:23000/--etcd-servers=https:\/\/127.0.0.1:2379/g' /etc/kubernetes/manifests/kube-apiserver.yaml
sed -i -e 's/--authorization-modus=Node,RBAC/--authorization-mode=Node,RBAC/g' /etc/kubernetes/manifests/kube-apiserver.yaml