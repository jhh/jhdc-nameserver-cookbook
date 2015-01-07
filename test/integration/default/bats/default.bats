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
