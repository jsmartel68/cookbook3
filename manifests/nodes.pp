node 'ubuntu-vm1', 'mysql-master', 'mysql-slave' {

  include puppet

  file { '/tmp/hello':
    content => "Hello, world\n",
  }
}
