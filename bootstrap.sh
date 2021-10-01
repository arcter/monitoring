#!/usr/bin/env bash

AUTH="bootstrapper:6cDoVsyYzzDE6fLi5MTB"

git clone \
  https://${AUTH}@git.sch.bme.hu/kszk/sysadmin/ansible/ansci.git \
  .template \
  || (cd .template && git pull && git checkout woranhun-wheel)

exec .template/playbook-template/bootstrap.sh
