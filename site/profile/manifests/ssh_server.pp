class profile::ssh_server {
   package {'openssl-server':
      ensure => present,
   }
   service { 'sshd':
      ensure => 'running',
      enable => 'true',
   }
   ssh_authorized_key { 'root@master.puppet.vm':
      ensure => present,
      user   => 'root',
      type   => 'ssh-rsa',
      key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCh+yZpe4ShxoAA4sJBHX6Is7y4xyiHpfPMKtPweBOXVWvdFmby3cLmlInzrR0ejE9A/NRVnhPRXOCHjuXRPcRGeWwn5DrtFr+kVmOkxsXzP09at58dQORIrHTkTXNX84DfmCml1J5cgF4FOgfntb4pBQliCs7AIHmrorDvSZumh01i+LN6B//OqEv1uOyL+gguZCVFfBjH0r0G1ogrA6iBrKSPHmngjiSqv7H7I9518bXIi5PQzaKRcCYVFIzASZq1hIZmi5lD6XOH9mtnWht2CBHzd8o3Nw2tY1IcISCM4FMhPrb/y3SrC0gh8S0LgJxSWilGo9rM1pc2TDGJx1dl'
   }
}
