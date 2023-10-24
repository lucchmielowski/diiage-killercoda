sed -i -e 's/metadata:/metadatal;/g' /etc/kubernetes/manifests/kube-apiserver.yaml
sed -i -e 's/--etcd-servers=https:\/\/127.0.0.1:2379/--etcd-servers=https:\/\/127.0.0.1:23000/g' /etc/kubernetes/manifests/kube-apiserver.yaml
sed -i -e 's/--authorization-mode=Node,RBAC/--authorization-modus=Node,RBAC/g' /etc/kubernetes/manifests/kube-apiserver.yaml