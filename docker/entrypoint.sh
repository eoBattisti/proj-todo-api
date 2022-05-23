#!/usr/bin/env bash

if ["$MODE" == "development"]; then
    echo "Creating migrations..."
    python manage.py makemigrations --noinput
    echo "Created!"
    python manage.py migrate --noinput
    echo "Migrated!"
fi

python manage.py runserver 0.0.0.0:9000