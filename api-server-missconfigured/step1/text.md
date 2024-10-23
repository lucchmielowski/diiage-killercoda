Vous vous trouvez actuellement sur le noeud `master` de votre cluster kubernetes. Suite a une mise a jour des fichiers de configuration, vous réalisez que le `kube-apiserver` de kubernetes de demarre plus. Son manifest est mal-configuré en 3 endroits. Reglez les problème pour redémarrer le composant puis validez votre réponse.

Pour vous aider, vous pouvez aller regarder les logs aux endroits suivants:
- logs kubelet: `/var/log/syslog` or `journalctl`
- `/var/log/pods`
- `/var/log/containers`
- `crictl ps` + `crictl logs`
- `docker ps` + `docker logs` (si vous utilisez docker)
