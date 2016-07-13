# etcshells

#### Table of Contents

1. [Overview](#overview)
2. [Module Description](#module-description)
3. [Setup](#setup)
    * [What etcshells affects](#what-etcshells-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with etcshells](#beginning-with-etcshells)
4. [Usage](#usage)
5. [Reference](#reference)
5. [Limitations](#limitations)
6. [Development](#development)
    * [Contributing](#contributing)

## Overview

Fully manages /etc/shells file.

This documentation has reviewed up to version 0.1.3.

## Module Description

Manages /etc/shells file adjusting it to the OS Version.

## Setup

### What etcshells affects

* /etc/shells/etc/shells, will be overwrite. will be overwrite.

## Usage

Simple example:
```puppet
class { 'etcshells':

etcshells::addshell { 'shellname':
    shellname => "/bin/shellname",
}

etcshells::addshell { '/bin/yetanothershell':
}
```

## Reference

### classes

#### etchsells

* **shells**: (Array) list of shells (default: default shells for each supported distro)

### defines

#### etcshells::addshell

* **shellname**: Add a shell to /etc/shells

## Limitations
* CentOS 6
* Ubuntu: 14.04

## Development

We are pushing to have acceptance testing in place, so any new feature must
have tests to check both presence and absence of any feature

### Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
