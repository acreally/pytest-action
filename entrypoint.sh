#!/bin/bash
set -x

python -m venv ./venv
source venv/bin/activate
pip install -r requirements.txt

mkdir -p artifacts/pytest

pytest --junitxml=artifacts/pytest/junit.xml --cov-report html:artifacts/pytest/ --cov-report xml:artifacts/pytest/coverage.xml --cov=src test
