#!/bin/sh
set -e

su $USER

# collect static
python manage.py collectstatic --no-input

python manage.py runserver 0.0.0.0:8000

exec "$@"
