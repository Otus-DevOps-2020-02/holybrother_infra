# holybrother_infra
holybrother Infra repository

#####
��������������� �������
#####
��� �������� ����������� ���������� jump �� ���������� �����, �������������� �������� SSH forwarding
```ssh -J appuser@35.246.113.27 appuser@10.154.0.3```
��� �������� �������� ����������� �������� ���� ������� � ��� �� �������� ~/.ssh � ������ config �� ��������� ����������:
```Host bastion
        User professional
        PreferredAuthentications publickey
        IdentityFile ~/.ssh/professional
        Hostname 35.246.113.27

```Host bastionlocal
        User professional
        Hostname 10.154.0.3
        ProxyJump bastion
������������ �� ssh � bastion/bastionlocal
������ �� �����������:
bastion_IP = 35.246.113.27
someinternalhost_IP = 10.154.0.3
