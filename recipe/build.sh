#!/usr/bin/env bash
set -e

# Install Cyclus
#export VERBOSE=1
${PYTHON} setup.py install --prefix="${PREFIX}"
