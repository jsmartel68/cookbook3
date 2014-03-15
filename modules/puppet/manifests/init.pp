# module for puppet runs and puppet config

class puppet {
  file {'/usr/local/bin/papply':
    source => 'puppet:///modules/puppet/papply.sh',
    mode   => '0755',
  }
}
