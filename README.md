[![Build Status](https://travis-ci.org/juju4/ansible-lxdconfigure.svg?branch=master)](https://travis-ci.org/juju4/ansible-lxdconfigure)
# LXD containers pre-configuration ansible role

Ansible role to pre-copy images and eventually pre-configure some.

## Requirements & Dependencies

### Ansible
It was tested on the following versions:
 * 2.0

### Operating systems

Tested on Ubuntu Trusty and Xenial

## Example Playbook

Just include this role in your list.
For example

```
- host: all
  roles:
    - lxdconfigure
```

## Variables

Nothing specific for now.

## Continuous integration

This role has a travis test calling kitchen with lxd (for github), kitchen local with vagrant+virtualbox and also a Vagrantfile (test/vagrant).

Once you ensured all necessary roles are present, You can test with:
```
$ cd /path/to/roles/lxdconfigure
## lxd backend
$ kitchen verify
$ kitchen login
## vagrant+virtualbox backend
$ KITCHEN_YAML=".kitchen.vagrant.yml" kitchen verify
```
or
```
$ cd /path/to/roles/lxdconfigure/test/vagrant
$ vagrant up
$ vagrant ssh
```

## Troubleshooting & Known issues


## License

BSD 2-clause

