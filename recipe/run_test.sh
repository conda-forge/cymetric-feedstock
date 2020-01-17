#!/bin/sh
# setup env for tests
cd tests

# run integration tests
nostests test_cyclus.py
nostests test_evaluator.py
nostests test_fco_metrics.py
nostests test_filters.py
nostests test_metrics.py
nostests test_root_metrics.py
nostests test_timeseries.py
