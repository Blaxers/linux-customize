#!/bin/bash
copy_bashrc_settings(){
  cp $PWD/bashrc/"${1}" ${HOME}/"${1}"
}
check_config(){
if grep -qw "${1}=true" "$PWD/scripts/config"; then
  echo "true configuration for [${1}]"
  copy_bashrc_settings "${1}"
elif grep -qw "${1}=false" "$PWD/scripts/config"; then
  echo "false configuration for [${1}]"
else
  echo "error configuration for [${1}]"
fi
}

if [ -d ${PWD}/copy ]; then
  check_config ".bashrc"
  check_config ".bash_aliases"
  check_config ".bash_scripts"
  check_config ".bash_logout"
fi
