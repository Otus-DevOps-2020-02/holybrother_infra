# holybrother_infra
holybrother Infra repository
# Jump to local instance
use SSH forwarding ssh -J professional@35.246.113.27 professional@10.154.0.3
# Config
Host bastion User professional PreferredAuthentications publickey IdentityFile ~/.ssh/professional Hostname 35.246.113.27 Host bastionlocal User professional Hostname 10.154.0.3 ProxyJump bastion
# CONNECT
bastion_IP = 35.246.113.27
someinternalhost_IP = 10.154.0.3
