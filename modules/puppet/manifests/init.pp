# module for puppet runs and puppet config

class puppet {
  file {'/usr/local/bin/papply':
    source => 'puppet:///modules/puppet/files/papply.sh',
    mode   => '0755',
  }
}
