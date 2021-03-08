#!/usr/bin/env bash
#
if [[ $(id -u) -ne 0 ]]; then
  echo "You must be root to run this script."
  exit
fi

VMS=(cl1-master1 cl1-compute1 cl1-compute2 cl1-infra1 cl1-infra2 cl1-infra3)
for i in ${VMS[@]}
do
  virsh start $i
done

