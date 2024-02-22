#!/bin/bash

main(){
  if [ -d ${PWD}/../copy ]; then
  echo "copy ${PWD}/../copy exists"
  else
  echo "creating copy ${PWD}/../copy"
  mkdir ${PWD}/../copy
  check_config ".bashrc"
  check_config ".bashrc_aliases"
  fi
}
copy_item(){
  if [ -f ${HOME}/${1} ]; then
  echo "${HOME}/${1} copied"
  cp $HOME/${1} $PWD/../copy/${1}
  else
  echo "$HOME/${1} not exists"
  fi
}
check_config(){
if grep -qw "${1}=true" "$PWD/config"; then
  echo "true configuration for [${1}]"
  copy_item "${1}"
elif grep -qw "${1}=false" "$PWD/config"; then
  echo "false configuration for [${1}]"
else
  echo "error configuration for [${1}]"
fi
}
#main - sprawdza czy istnieje copia jak nie tworzy ja
#check_config - sprawdza config dla czego ma zrobic kopie
#copy_item - kopiuje wybrany item dziala tylko dla plikow w sciezce $HOME
main