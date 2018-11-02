#!/usr/bin/env bats

load test_helper

@test "env is listed in nodenv commands" {
  run nodenv-commands
  assert_success
  assert_line "env"
}

@test "commands --sh should not list env" {
  run nodenv-commands --sh
  assert_success
  refute_line "env"
}

@test "commands --no-sh should list env" {
  run nodenv-commands --no-sh
  assert_success
  assert_line "env"
}
