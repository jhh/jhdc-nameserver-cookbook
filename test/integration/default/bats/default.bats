@test "bind package installed" {
  run rpm -q --quiet bind
  [ "$status" -eq 0 ]
}

@test "bind-utils package installed" {
  run rpm -q --quiet bind-utils
  [ "$status" -eq 0 ]
}

@test "named service is running" {
  run systemctl status named.service
  [ "$status" -eq 0 ]
}

@test "resolv.conf file rendered" {
  run grep -q "nameserver 127.0.0.1" /etc/resolv.conf
  [ "$status" -eq 0 ]
}
