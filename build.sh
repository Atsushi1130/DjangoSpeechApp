#!/usr/bin/env bash
# exit on error
set -o errexit

pip install --upgrade pip
pip install -r requirements.txt
pip install PyAudio-0.2.11-cp39-cp39-win_amd64.whl

python manage.py collectstatic --no-input
python manage.py migrate
python manage.py superuser
