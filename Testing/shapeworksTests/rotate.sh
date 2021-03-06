#! /bin/bash

shapeworks readimage --name $DATA/la-bin-centered.nrrd rotate -x 0.0 -y 0.0 -z 1.0 --degrees -45 compareimage --name $DATA/rotate1.nrrd
if [[ $? != 0 ]]; then exit -1; fi
shapeworks readimage --name $DATA/la-bin-centered.nrrd rotate -x 1.0 -y 1.0 -z 1.0 --radians .7854 compareimage --name $DATA/rotate2.nrrd
