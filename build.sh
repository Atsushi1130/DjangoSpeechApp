#!/usr/bin/env bash
# exit on error
set -o errexit

pip install --upgrade pip
pip install -r requirements.txt
pip install --global-option='build_ext' --global-option='-I/usr/local/Cellar/portaudio/19.7.0/include' --global-option='-L/usr/local/Cellar/portaudio/19.7.0/lib' pyaudio

python manage.py collectstatic --no-input
python manage.py migrate
python manage.py superuser
