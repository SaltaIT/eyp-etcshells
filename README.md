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

## Overview

Fully manages /etc/shells file.

This documentation has reviewed up to version 0.1.3.

## Module Description

Manages /etc/shells file adjusting it to the OS Version.

## Setup

### What etcshells affects

* /etc/shells/etc/shells, will be overwrite. will be overwrite.

### Beginning with etcshells

Simple example:
```puppet
class { 'etcshells':

etcshells::addshell { 'shellname':
    shellname => "/bin/shellname",
}

etcshells::addshell { '/bin/yetanothershell':
}
```

## Limitations
* Redhat and derivatives: 6 releases.
* Ubuntu: 14 releases.
* Others: unsuported.
