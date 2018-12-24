#!/usr/bin/env bats

load test_helper

@test "nodenv-env lists only interesting environment variables" {
  export FOO=bar
  export NPMFOO=bar
  export NPM_FOO=bar
  export NODEFOO=bar
  export NODE_FOO=bar
  export NODENVFOO=bar
  export NODENV_FOO=bar

  run nodenv env

  echo $output

  assert_success

  refute_line "FRED=john"

  refute_line "NPMFOO=bar"
  assert_line "NPM_FOO=bar"

  refute_line "NODEFOO=bar"
  assert_line "NODE_FOO=bar"

  refute_line "NODENVFOO=bar"
  assert_line "NODENV_FOO=bar"

  assert_line "PATH=$NODENV_LIBEXEC:$PATH"
}

@test "is case insensitive for npm_" {
  export NPM_UPPER=bar
  export npm_lower=bar
  export NpM_mIx=bar

  export node_foo=bar

  run nodenv env

  echo $output

  assert_success

  refute_line "node_foo=bar"

  assert_line "NPM_UPPER=bar"
  assert_line "npm_lower=bar"
  assert_line "NpM_mIx=bar"
}
