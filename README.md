holybrother_infra

<<<<<<< HEAD
��� �������� ����������� ���������� jump �� ���������� �����, �������������� �������� SSH forwarding
ssh -J appuser@35.246.113.27 appuser@10.154.0.3
��� �������� �������� ����������� �������� ���� ������� � ��� �� �������� ~/.ssh � ������ config �� ��������� ����������:
Host bastion        User professional        PreferredAuthentications publickey        IdentityFile ~/.ssh/professional        Hostname 35.246.113.27Host bastionlocal        User professional        Hostname 10.154.0.3        ProxyJump bastion ������������ �� ssh � bastion/bastionlocal ������ �� �����������
=======


��� �������� ����������� ���������� jump �� ���������� �����, �������������� �������� SSH forwarding
ssh -J appuser@35.246.113.27 appuser@10.154.0.3
��� �������� �������� ����������� �������� ���� ������� � ��� �� �������� ~/.ssh � ������ config �� ��������� ����������:
Host bastion
        User professional
        PreferredAuthentications publickey
        IdentityFile ~/.ssh/professional
        Hostname 35.246.113.27

Host bastionlocal
        User professional
        Hostname 10.154.0.3
        ProxyJump bastion
������������ �� ssh � bastion/bastionlocal
������ �� �����������:

>>>>>>> ecd3421c1f999c5e25f8def282ddd42a1c706603
bastion_IP = 35.246.113.27
someinternalhost_IP = 10.154.0.3
