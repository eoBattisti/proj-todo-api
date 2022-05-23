#!/bin/bash

apt-get update
apt-get -y install libpq-dev python-dev gcc netcat make cron graphviz

pip install --upgrade pip
if ["$MODE" == "development"]; then
    pip install -r main.txt
elif ["$MODE" == "ci"]; then
    pip install -r ci.txt
else
    pip install -r prod.txt
fi
