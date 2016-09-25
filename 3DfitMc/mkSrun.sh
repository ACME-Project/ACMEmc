#!/bin/bash

# configs  change to your desired configurations:
#N ; number of node
#n ; number of rank
#p ; number of thread


configs=(
"1     200     523 "
"2     250     523 "
"3     300     523 "
"4     350     523 "
"5     400    523 "
)

rm mc.*.sh

for conf in "${configs[@]}" ; do
    nfolder=`echo $conf | awk '{print $1}'`
    velinv=`echo $conf | awk '{print $2}'`
    peaktmp=`echo $conf | awk '{print $3}'`

    rm /gpfs/u/scratch/ACME/ACMEtany/MSMSEpaper/3Dfit/$nfolder/*  
    mkdir /gpfs/u/scratch/ACME/ACMEtany/MSMSEpaper/3Dfit/$nfolder

    sed -e "s/NFOLDER/$nfolder/g" \
        -e "s/VELINV/$velinv/g" \
        -e "s/PEAKTMP/$peaktmp/g" \
        srun_MC.tmp > mc.$velinv.$peaktmp.sh

done