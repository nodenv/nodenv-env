# nodenv-env

[![Build Status](https://travis-ci.org/nodenv/nodenv-env.svg?branch=master)](https://travis-ci.org/nodenv/nodenv-env)

[nodenv][] plugin to view environment variables pertaining to nodejs

## Installation

To install nodenv-env, clone this repository into your ~/.nodenv/plugins directory.

    $ git clone https://github.com/nodenv/nodenv-env.git "$(nodenv root)/plugins/nodenv-env"

## Usage

Run the command

    $ nodenv env

### Usage without installation

nodenv-env can be invoked directly via `npx` without installing it locally.

    $ npx -q @nodenv/nodenv-env

## Credits

Forked from [ianheggie][]'s [rbenv-env][] by [Jason Karns][jasonkarns] and modified for nodenv.

[nodenv]: https://github.com/nodenv/nodenv
[ianheggie]: https://github.com/ianheggie
[rbenv-env]: https://github.com/ianheggie/rbenv-env
[jasonkarns]: https://github.com/jasonkarns
