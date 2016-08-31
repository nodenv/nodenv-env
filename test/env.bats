#!/usr/bin/env bats

load test_helper

@test "running nodenv-env lists only interesting environment variables" {
  export FOO=bar
  export NPMFOO=bar
  export NPM_FOO=bar
  export NODEFOO=bar
  export NODE_FOO=bar
  export NODENVFOO=bar
  export NODENV_FOO=bar

  run nodenv-env

  echo $output

  assert_success

  refute_line "FRED=john"

  refute_line "NPMFOO=bar"
  assert_line "NPM_FOO=bar"

  refute_line "NODEFOO=bar"
  assert_line "NODE_FOO=bar"

  refute_line "NODENVFOO=bar"
  assert_line "NODENV_FOO=bar"

  assert_line "PATH=$PATH"
}
