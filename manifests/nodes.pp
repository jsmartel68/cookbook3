node 'ubuntu-vm1', 'mysql-master', 'mysql-slave' {
  file { '/tmp/hello':
    content => "Hello, world\n",
  }

  include puppet
}
