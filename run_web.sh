#!/usr/bin/env bash

python manage.py makemigrations
python manage.py migrate
python manage.py collectstatic --no-input
gunicorn mysite.wsgi -b 0.0.0.0:8000