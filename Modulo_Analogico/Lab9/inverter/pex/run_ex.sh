#!/usr/bin/env bash
echo ${PDK_ROOT:=/usr/share/pdk} > /dev/null
echo ${PDK:=ihp-sg13g2} > /dev/null
if [ "$#" -ne 1 ] ; then
   echo "Missing argument:  Name of cell"
   exit 1
fi
magic -rcfile $PDK_ROOT/$PDK/libs.tech/magic/$PDK.magicrc -dnull -noconsole << EOF
gds read $1
load $1
select top cell
expand
flatten $1_flat
load $1_flat
select top cell
cellname delete $1
cellname rename $1_flat $1
extract path extfiles
extract all
ext2sim labels on
ext2sim -p extfiles
extresist tolerance 10
extresist
ext2spice lvs
ext2spice cthresh 0
ext2spice extresist on
ext2spice -p extfiles
quit
EOF
exit 0
