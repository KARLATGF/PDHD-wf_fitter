#!/bin/bash

# Check if a run number is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <run_number>"
    exit 1
fi

RUN_NUMBER=$1

# Run the ROOT script
root -l -b -q "wf_fitter_HD_NO_AVG.C(${RUN_NUMBER})"
