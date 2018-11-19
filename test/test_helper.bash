# shellcheck shell=bash

load ../node_modules/bats-assert/all

unset NODENV_VERSION
unset NODENV_DIR

# guard against executing this block twice due to bats internals
if [ "$NODENV_ROOT" != "${BATS_TMPDIR}/root" ]; then
  export HOME="${BATS_TMPDIR}/home"
  export NODENV_ROOT="${BATS_TMPDIR}/root"

  # save off location of nodenv's libexec dir
  # because it gets added to PATH by nodenv
  NODENV_LIBEXEC="$(npm ls @nodenv/nodenv --parseable)/libexec"
  export NODENV_LIBEXEC

  PATH="$(npm bin):/usr/bin:/bin:/usr/sbin:/sbin"
  PATH="${BATS_TEST_DIRNAME}/../bin:$PATH"
  export PATH

  eval "$(nodenv init -)"
fi
