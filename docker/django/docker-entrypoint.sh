#!/bin/bash

python manage.py migrate

gunicorn --chdir webapp --bind :8000 webapp.wsgi
