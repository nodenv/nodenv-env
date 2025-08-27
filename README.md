# nodenv-env

[![Build Status](https://travis-ci.org/nodenv/nodenv-env.svg?branch=master)](https://travis-ci.org/nodenv/nodenv-env)

[nodenv][] plugin to view environment variables pertaining to Node.js

## Installation

To install nodenv-env, clone this repository into your ~/.nodenv/plugins directory.

```console
git clone https://github.com/nodenv/nodenv-env.git "$(nodenv root)/plugins/nodenv-env"
```

## Usage

Run the command

```console
nodenv env
```

### Usage without installation

nodenv-env can be invoked directly via `npx` without installing it locally.

```console
npx -q @nodenv/nodenv-env
```

## Credits

Forked from [ianheggie's](https://github.com/ianheggie)
[rbenv-env](https://github.com/ianheggie/rbenv-env)
by [Jason Karns](https://github.com/jasonkarns)
and modified for nodenv.

[nodenv]: https://github.com/nodenv/nodenv
