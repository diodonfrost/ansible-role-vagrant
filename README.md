# ansible-role-vagrant

[![molecule](https://github.com/diodonfrost/ansible-role-vagrant/workflows/molecule/badge.svg)](https://github.com/diodonfrost/ansible-role-vagrant/actions)
[![Ansible Galaxy](https://img.shields.io/badge/galaxy-diodonfrost.vagrant-660198.svg)](https://galaxy.ansible.com/diodonfrost/vagrant)

This role provide a compliance for install vagrant on your target host.

## Requirements

This role was developed using Ansible 2.5 Backwards compatibility is not guaranteed.
Use `ansible-galaxy install diodonfrost.vagrant` to install the role on your system.

## Role Variables

This role has multiple variables. The defaults for all these variables are the following:

```yaml
---
---
# defaults file for ansible-role-vagrant

# Define Vagrant version to install
# Possible values: https://releases.hashicorp.com/vagrant/index.json
# Default: latest
vagrant_version: latest

# Install Vagrant from binary
vagrant_binary_install: false
```

## Dependencies

None

## Example Playbook

This is a sample playbook file for deploying the Ansible Galaxy vagrant role in a localhost and installing latest Vagrant version.

```yaml
---
- hosts: localhost
  become: true
  roles:
    - role: diodonfrost.vagrant
```

## Local Testing

This project uses [Molecule](http://molecule.readthedocs.io/) to aid in the
development and testing.

To develop or test you'll need to have installed the following:

* Linux (e.g. [Ubuntu](http://www.ubuntu.com/))
* [Docker](https://www.docker.com/)
* [Python](https://www.python.org/) (including python-pip)
* [Ansible](https://www.ansible.com/)
* [Molecule](http://molecule.readthedocs.io/)
* [Virtualbox](https://www.virtualbox.org/) (windows test only)
* [Vagrant](https://www.vagrantup.com/downloads.html) (windows test only)

### Testing with Docker

```shell
# Install requirements
pip install -r requirements-dev.txt

# Test ansible role with centos 8
molecule test

# Test ansible role with ubuntu 20.04
image=ansible-ubuntu:20.04 molecule test

# Test ansible role with alpine latest
image=ansible-alpine:rolling molecule test

# Create centos 8 instance
molecule create

# Apply role on centos 8 instance
molecule converge

# Launch tests on centos 8 instance
molecule verify
```

### Testing with Vagrant and Virtualbox

```shell
# Test ansible role with Windows
molecule test -s windows
```

## License

Apache 2

## Author Information

This role was created in 2019 by diodonfrost.
