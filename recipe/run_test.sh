#!/bin/sh
# setup env for tests
cd tests
export PATH="${PREFIX}/bin:${PATH}"
export CYCLUS_PATH="${PREFIX}/lib/cyclus"
if [ -z "$CYCLUS_NUC_DATA" ]; then
  export CYCLUS_NUC_DATA="${PREFIX}/share/cyclus/cyclus_nuc_data.h5"
fi

UNAME="$(uname)"
if [ "${UNAME}" == "Darwin" ]; then
  export DYLD_FALLBACK_LIBRARY_PATH="${PREFIX}/lib/cyclus:${PREFIX}/lib:${DYLD_FALLBACK_LIBRARY_PATH}"
else
  export LD_LIBRARY_PATH="${PREFIX}/lib/cyclus:${PREFIX}/lib:${LD_LIBRARY_PATH}"
fi


# run integration tests
if [ "${UNAME}" == "Darwin" ]; then
  echo "skipping integration tests that take too long on mac"
else
  nostests test_cyclus.py
  nostests test_evaluator.py
  nostests test_fco_metrics.py
  nostests test_filters.py
  nostests test_metrics.py
  nostests test_root_metrics.py
  nostests test_timeseries.py
fi
