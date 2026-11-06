# Promtail

![](https://img.shields.io/puppetforge/v/grafana/promtail.svg?style=popout)
![](https://img.shields.io/puppetforge/dt/grafana/promtail.svg?style=popout)
[![Build Status](https://github.com/grafana/puppet-promtail/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/grafana/puppet-promtail/actions/workflows/ci.yml)
[![License](https://img.shields.io/github/license/grafana/puppet-promtail?stype=popout)](LICENSE)

Deploy and configure Grafana's Promtail on a node.

- [Description](#description)
- [Usage](#usage)
- [Reference](#reference)
- [Changelog](#changelog)
- [Limitations](#limitations)
- [Development](#development)
- [Module Release](#module-release)

## Description

[Promtail](https://github.com/grafana/loki/tree/master/docs/clients/promtail) is an agent which ships the contents of local logs to a private [Loki](https://grafana.com/oss/loki) instance or [Grafana Cloud](https://grafana.com/products/cloud). It is usually deployed to every machine that has applications needed to be monitored.

It primarily:

1. Discovers targets
2. Attaches labels to log streams
3. Pushes them to the Loki instance.

Currently, Promtail can tail logs from two sources: local log files and the systemd journal (on AMD64 machines only).

## Usage

The simplest way to get started with this module is to add `include promtail` to a manifest and create your config settings in Hiera. Additional details and examples are contained in [REFERENCE.md](REFERENCE.md).

## Reference

This module is documented via
`bundle exec rake strings:generate:reference`.
Please see [REFERENCE.md](REFERENCE.md) for more info.

## Changelog

See [CHANGELOG.md](CHANGELOG.md).

## Limitations

At the moment, this module only supports Linux. Future versions will support additional OS's including Windows.

## Development

Pull requests are welcome!

```sh
bundle install
bundle exec rake test rubocop
```

CI runs these checks against the newest (`.fixtures.yml`) and the oldest supported
dependency versions (`.fixtures-previous.yml`). To run them locally against the
oldest ones, set `FIXTURES_YML=.fixtures-previous.yml`.

## Module Release

1. Bump the module version in `metadata.json` and add the changes to `CHANGELOG.md`.
2. Run `bundle exec rake strings:generate:reference` and commit `REFERENCE.md`.
3. Tag the release commit with the version.
