#!/bin/bash

#Setting Export Variables for IMPACT_SRAM Caravel Design
#Created by LiamOswald

mkdir dependencies

export OPENLANE_ROOT=$(pwd)/dependencies/openlane_src # you need to export this whenever you start a new shell

export PDK_ROOT=$(pwd)/dependencies/pdks # you need to export this whenever you start a new shell

export PDK=sky130A

make setup
