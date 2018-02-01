# Grafana

[![License](https://img.shields.io/badge/license-New%20BSD-blue.svg?style=flat)](https://raw.githubusercontent.com/ansiblebit/grafana/master/LICENSE)
[![Build Status](https://travis-ci.org/ansiblebit/grafana.svg?branch=master)](https://travis-ci.org/ansiblebit/grafana)

[![Platform](http://img.shields.io/badge/platform-debian-a80030.svg?style=flat)](#)
[![Platform](http://img.shields.io/badge/platform-ubuntu-dd4814.svg?style=flat)](#)

[![Project Stats](https://www.openhub.net/p/ansiblebit-grafana/widgets/project_thin_badge.gif)](https://www.openhub.net/p/ansiblebit-grafana/)

[Ansible][ansible] role to setup [Grafana][grafana].


## Tests

| Family | Distribution | Version | Test Status |
|:-:|:-:|:-:|:-:|
| Debian | Debian  | Jessie  | [![x86_64](http://img.shields.io/badge/x86_64-passed-006400.svg?style=flat)](#) |
| Debian | Debian  | Wheezy  | [![x86_64](http://img.shields.io/badge/x86_64-passed-006400.svg?style=flat)](#) |
| Debian | Ubuntu  | Xenial  | [![x86_64](http://img.shields.io/badge/x86_64-passed-006400.svg?style=flat)](#) |
| Debian | Ubuntu  | Trusty  | [![x86_64](http://img.shields.io/badge/x86_64-passed-006400.svg?style=flat)](#) |
| Debian | Ubuntu  | Precise | [![x86_64](http://img.shields.io/badge/x86_64-passed-006400.svg?style=flat)](#) |
| Debian | Ubuntu  | Vivid   | [![x86_64](http://img.shields.io/badge/x86_64-passed-006400.svg?style=flat)](#) |


## Requirements

- ansible >= 1.9.6


## Role Variables

- **grafana_admin_password**: password for the [Grafana][grafana] administrator account.
- **grafana_admin_user**: user name for the [Grafana][grafana] administrator account.
- **grafana_apt_dependencies**: packages needed to be able to run this playbook or install [Grafana][grafana].
- **grafana_conf_file**: the file that will contain [Grafana][grafana]'s configuration.
- **grafana_conf_data**: the contents of [Grafana][grafana]'s configuration file.
- **grafana_default**: the contents of [Grafana][grafana]'s init script environment. 
- **grafana_dir_conf**: the directory where the [Grafana][grafana] configuration file will be stored.
- **grafana_dir_data**: the directory where the [Grafana][grafana] data will be stored.
- **grafana_dir_home**: the [Grafana][grafana] home directory.
- **grafana_dir_log**: the directory where the [Grafana][grafana] log files will be stored.
- **grafana_dir_plugins**: the directory where the [Grafana][grafana] plugins will be stored.
- **grafana_http_port**: the port where the [Grafana][grafana] service will be running.
- **grafana_group**: the [Grafana][grafana] group.
- **grafana_user**: the [Grafana][grafana] user.

Unless stated otherwise a default value is provided for each of the variables mentioned above in the `defaults` directory.


## Dependencies

None.


## Playbooks

    - hosts: servers
      roles:
         - role: ansiblebit.grafana

## Tags

- **configuration**: configuration tasks.
- **debug**: task to debug role variables.
- **installation**: installation tasks.
- **validation**: task to validate role variables.


## Test

To run the tests you will need to install:

- [tox](https://tox.readthedocs.org/)
- [vagrant](https://www.vagrantup.com/)

To run all tests against all pre-defined OS/distributions * ansible versions:

```
$ tox
```

To run tests for `trusty64`:

```
$ cd tests
$ bash test_idempotence.sh --box trusty64.vagrant.dev
# log file will be stores under tests/log
```

To perform debugging on a specific environment:

```
$ cd tests
$ vagrant up trusty64.vagrant.dev

# to provision using the test.yml playbook (as many time as you need)
$ vagrant provision trusty64.vagrant.dev

# to access the Vagrant box
$ vagrant ssh trusty64.vagrant.dev
```


## Links

- [Grafana : Installing on Debian / Ubuntu](http://docs.grafana.org/installation/debian/)


## License

[BSD][license]


## Author Information

- [steenzout][steenzout]


[ansible]:      https://www.ansible.com         "Ansible"
[grafana]:      http://grafana.org              "Grafana"
[license]:      https://github.com/ansiblebit/grafana/blob/master/LICENSE  "BSD license"
[steenzout]:    https://github.com/steenzout/   "Pedro Salgado"
