# holybrother_infra
holybrother Infra repository
# Jump to local instance
��� �������� ����������� ���������� jump �� ���������� �����, �������������� �������� SSH forwarding
ssh -J appuser@35.246.113.27 appuser@10.154.0.3
# Config
Host bastion
        User professional
        PreferredAuthentications publickey
        IdentityFile ~/.ssh/professional
        Hostname 35.246.113.27
Host bastionlocal
        User professional
        Hostname 10.154.0.3
        ProxyJump bastion
#������ �� �����������
bastion_IP = 35.246.113.27
someinternalhost_IP = 10.154.0.3
