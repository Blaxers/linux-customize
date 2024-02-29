#!/bin/bash
start(){
  chmod +x ./scripts/"${1}".sh
  ./scripts/"${1}".sh
  chmod -x ./scripts/"${1}".sh
}
#Create copy for old configuration
start copy
#Install new configuration
start install