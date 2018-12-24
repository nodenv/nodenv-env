#!/usr/bin/env bats

load test_helper

@test "help for env is available" {
  run nodenv help 'env'
  assert_success
  assert_line "Usage: nodenv env"
  assert_line "Shows PATH and any variables that start with NPM, NODE or NODENV"
}
