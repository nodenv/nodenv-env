# shellcheck shell=bash

load ../node_modules/bats-assert/all

unset NODENV_VERSION
unset NODENV_DIR

NODENV_TEST_DIR="${BATS_TMPDIR}/nodenv"

# guard against executing this block twice due to bats internals
if [ "$NODENV_ROOT" != "${NODENV_TEST_DIR}/root" ]; then
  export NODENV_ROOT="${NODENV_TEST_DIR}/root"
  export HOME="${NODENV_TEST_DIR}/home"

  PATH=/usr/bin:/bin:/usr/sbin:/sbin
  PATH="${NODENV_TEST_DIR}/bin:$PATH"
  PATH="${BATS_TEST_DIRNAME}/../bin:$PATH"
  PATH="${BATS_TEST_DIRNAME}/../nodenv/libexec:$PATH"
  PATH="${BATS_TEST_DIRNAME}/../nodenv/test/libexec:$PATH"
  PATH="${NODENV_ROOT}/shims:$PATH"
  export PATH
fi

teardown() {
  rm -rf "$NODENV_TEST_DIR"
}
