#!/usr/bin/env bash
#
if [[ $(id -u) -ne 0 ]]; then
  echo "You must be root to run this script."
  exit
fi

PRE=""
if [[ $# -eq 1 ]]; then
  PRE="$1"
fi

VMS=(master compute1 compute2 infra1 infra2 infra3)
for i in ${VMS[@]}
do
  virsh start ${PRE}$i
  sleep 2
done

