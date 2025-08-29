# nodenv-env

[nodenv][] plugin to view environment variables pertaining to Node.js

[![Tests](https://img.shields.io/github/actions/workflow/status/nodenv/nodenv-env/test.yml?label=tests&logo=github)](https://github.com/nodenv/nodenv-env/actions/workflows/test.yml)
[![Latest GitHub Release](https://img.shields.io/github/v/release/nodenv/nodenv-env?label=github&logo=github&sort=semver)](https://github.com/nodenv/nodenv-env/releases/latest)
[![Latest Homebrew Release](<https://img.shields.io/badge/dynamic/regex?label=homebrew-nodenv&logo=homebrew&logoColor=white&url=https%3A%2F%2Fraw.githubusercontent.com%2Fnodenv%2Fhomebrew-nodenv%2Frefs%2Fheads%2Fmain%2FFormula%2Fnodenv-env.rb&search=archive%2Frefs%2Ftags%2Fv(%3F%3Cversion%3E%5Cd%2B.*).tar.gz&replace=v%24%3Cversion%3E>)](https://github.com/nodenv/homebrew-nodenv/blob/main/Formula/nodenv-env.rb)
[![Latest npm Release](https://img.shields.io/npm/v/@nodenv/nodenv-env?logo=npm&logoColor=white)](https://www.npmjs.com/package/@nodenv/nodenv-env/v/latest)

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
