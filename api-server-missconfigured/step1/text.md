Vous vous trouvez actuellement sur le noeud `master` de votre cluster kubernetes. Suite a une mise a jour des fichiers de configuration, vous réalisez que lorsque vous lancez n'importe quelle commande `kubectl` vous avez l'erreur suivante:

```
The connection to the server ... was refused - did you specify the right host or port?
```

Nous savons que ce n'est pas causé par une mauvaise configuration de notre `.kubeconfig` et que l'host/port spécifié dans le message est le bon.

Réglez les problèmes afin de pouvoir de nouveau vous servir de `kubectl`.

Pour vous aider, vous pouvez aller regarder les logs aux endroits suivants:
- logs kubelet: `/var/log/syslog` or `journalctl`
- `/var/log/pods`
- `/var/log/containers`
- `crictl ps` + `crictl logs`
- `docker ps` + `docker logs` (si vous utilisez docker)
