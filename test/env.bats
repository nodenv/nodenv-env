#!/usr/bin/env bats

load test_helper

@test "running nodenv-env lists only interesting environment variables" {
  export FRED=john
  export RUBY123=456
  export RAILS56=78
  export GEMSTONES=precious
  export NODENV_ABC=tv.station

  run nodenv-env

  assert_success
  refute_line "FRED=john"
  assert_line "GEMSTONES=precious"
  assert_line "NODENV_ABC=tv.station"
  assert_line "NODENV_VERSION=system"
  assert_line "NODENV_ROOT=$NODENV_ROOT"
  assert_line "RUBY123=456"
  assert_line "RAILS56=78"
  assert_line "PATH=$PATH"
}
