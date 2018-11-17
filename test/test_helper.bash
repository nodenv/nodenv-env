# shellcheck shell=bash

load ../node_modules/bats-assert/all

unset NODENV_VERSION
unset NODENV_DIR

# guard against executing this block twice due to bats internals
if [ "$NODENV_ROOT" != "${BATS_TMPDIR}/root" ]; then
  export HOME="${BATS_TMPDIR}/home"
  export NODENV_ROOT="${BATS_TMPDIR}/root"

  PATH="$(npm bin):/usr/bin:/bin:/usr/sbin:/sbin"
  PATH="${BATS_TEST_DIRNAME}/../bin:$PATH"
  PATH="${NODENV_ROOT}/shims:$PATH"
  export PATH
fi
