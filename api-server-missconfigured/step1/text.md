L'`api-server` de kubernetes de demarre pas. Son manifest est mal-configure en 3 endroits. Reglez le probleme

Pour vous aider, vous pouvez aller regarder les logs aux endroits suivants:

  `/var/log/pods`
  `/var/log/containers`
  `crictl ps` + `crictl logs`
  `docker ps` + `docker logs` (si vous utilisez docker)
  logs kubelet: `/var/log/syslog` or `journalctl`
