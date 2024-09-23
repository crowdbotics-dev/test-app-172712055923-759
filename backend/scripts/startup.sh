#!/bin/bash

python manage.py collectstatic --no-input
python manage.py migrate --noinput

waitress-serve --port=$PORT test_app_172712055923_759.wsgi:application
