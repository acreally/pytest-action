#!/bin/bash
set -x

python -m venv ./venv
source venv/bin/activate
pip install -r requirements.txt

pytest --junitxml=junit.xml --cov-report html --cov-report xml --cov=src --cov-report term-missing test
