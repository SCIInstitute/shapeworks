#! /bin/bash

shapeworks readimage --name $DATA/1x2x2.nrrd extractlabel compareimage --name $DATA/extractlabel1.nrrd
if [[ $? != 0 ]]; then exit -1; fi
shapeworks readimage --name $DATA/1x2x2.nrrd extractlabel --label 2.0 compareimage --name $DATA/extractlabel2.nrrd
if [[ $? != 0 ]]; then exit -1; fi
shapeworks readimage --name $DATA/1x2x2.nrrd extractlabel --label -2.0 compareimage --name $DATA/extractlabel3.nrrd
if [[ $? != 0 ]]; then exit -1; fi
shapeworks readimage --name $DATA/1x2x2.nrrd extractlabel --label 0 compareimage --name $DATA/extractlabel4.nrrd
