#!/bin/bash

#Setting Export Variables for IMPACT_SRAM Caravel Design
#Created by LiamOswald

mkdir dependencies

export OPENLANE_ROOT=$(pwd)/dependencies/openlane_src # you need to export this whenever you start a new shell

export PDK_ROOT=$(pwd)/dependencies/pdks # you need to export this whenever you start a new shell

export PDK=sky130A

export DOCKER_SWAP=$(pwd)/mgmt_core_wrapper
export DOCKER_MEMORY=$(pwd)/mgmt_core_wrapper
export ROUTING_CORES=$(pwd)/mgmt_core_wrapper
export STD_CELL_LIBRARY=$(pwd)/mgmt_core_wrapper

mkdir -p $(pwd)/caravel_venv
python3 -m venv $(pwd)/caravel_venv
source $(pwd)/caravel_venv/bin/activate


make user_proj_example
