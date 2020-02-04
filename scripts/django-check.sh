#!/usr/bin/env bash

set -e
cd dj
export DATABASE_URL=${DATABASE_URL_PY}

../venv/bin/python manage.py check
../venv/bin/python manage.py makemigrations --check --dry-run
