# holybrother_infra
holybrother Infra repository

#####
Самостоятельное задание
#####
Для удобного подключения используем jump до локального хоста, предварительно настроив SSH forwarding
```ssh -J appuser@35.246.113.27 appuser@10.154.0.3```
Для наиболее удобного подключения создадим файл конфига в том же каталоге ~/.ssh с именем config со следующим содержимым:
```Host bastion
        User professional
        PreferredAuthentications publickey
        IdentityFile ~/.ssh/professional
        Hostname 35.246.113.27

```Host bastionlocal
        User professional
        Hostname 10.154.0.3
        ProxyJump bastion
Подключаемся по ssh к bastion/bastionlocal
Данные по подключению:
bastion_IP = 35.246.113.27
someinternalhost_IP = 10.154.0.3
