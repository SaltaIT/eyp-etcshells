# etcshells

#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with etcshells](#setup)
    * [What etcshells affects](#what-etcshells-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with etcshells](#beginning-with-etcshells)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

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
```

## Limitations
* Redhat and derivatives: 6 releases.
* Ubuntu: 14 releases.
* Others: unsuported.
