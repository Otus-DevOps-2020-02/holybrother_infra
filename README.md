# Jump to local instance
Подключаемся к внешнему хосту ssh forwarding, предварительно добавив ключи ssh -J professional@35.246.113.27 professional@10.154.0.3
# Config 
Host bastion User professional PreferredAuthentications publickeyIdentityFile ~/.ssh/professional Hostname 35.246.113.27 Host bastionlocal User professional Hostname 10.154.0.3 ProxyJump bastion
# Хосты
bastion_IP = 35.246.113.27
someinternalhost_IP = 10.154.0.3
