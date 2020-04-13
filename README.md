# holybrother_infra
holybrother Infra repository
# Jump to local instance
Подключаемся через внешний хост используя ssh forwarding, предварительно добавив ключи ssh -J appuser@35.246.113.27 appuser@10.154.0.3
# Config 
Host bastion User professional PreferredAuthentications publickeyIdentityFile ~/.ssh/professional Hostname 35.246.113.27 Host bastionlocal User professional Hostname 10.154.0.3 ProxyJump bastion Хосты: bastion_IP = 35.246.113.27 someinternalhost_IP = 10.154.0.3
