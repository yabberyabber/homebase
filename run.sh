#! /usr/bin/env bash

set -o errexit

readonly PLAYBOOK_REPO="https://github.com/yabberyabber/homebase.git"
readonly PLAYBOOK=setup.yaml

# to also install redshift, add the following: --tags graphical
ansible-pull -U "${PLAYBOOK_REPO}" -i localhost, "${PLAYBOOK}" --ask-become-pass
