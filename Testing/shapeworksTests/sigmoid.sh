#!/bin/bash

shapeworks readimage --name $DATA/1x2x2.nrrd sigmoid compare --name $DATA/sigmoid1.nrrd

shapeworks readimage --name $DATA/1x2x2.nrrd sigmoid --alpha 10.5 --beta 10.5 compare --name $DATA/sigmoid2.nrrd

shapeworks readimage --name $DATA/1x2x2.nrrd sigmoid --alpha -10.5 compare --name $DATA/sigmoid3.nrrd

shapeworks readimage --name $DATA/1x2x2.nrrd sigmoid --beta -10.5 compare --name $DATA/sigmoid4.nrrd
