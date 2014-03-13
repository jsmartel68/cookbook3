node 'ubuntu-vm1' {
  file { '/tmp/hello':
    content => "Hello, world\n",
  }
}
