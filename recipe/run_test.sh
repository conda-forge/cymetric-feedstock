#!/bin/sh
# setup env for tests
cd tests

# add cyclus lib to path
export LD_LIBRARY_PATH="${PREFIX}/lib/cyclus:${PREFIX}/lib:${LD_LIBRARY_PATH}"  

# run integration tests
nosetests test_cyclus.py
nosetests test_evaluator.py
nosetests test_fco_metrics.py
nosetests test_filters.py
nosetests test_metrics.py
nosetests test_root_metrics.py
nosetests test_timeseries.py
