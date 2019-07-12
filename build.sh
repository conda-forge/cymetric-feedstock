#!/usr/bin/env bash
set -e


# Install Cymetric
#export VERBOSE=1
${PYTHON} setup.py install --prefix="${PREFIX}" \
  --clean -j "${CPU_COUNT}"
