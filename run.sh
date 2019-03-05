#!/bin/bash
cp /config/me.yml /app/config/me.yml
python -c "import config; config.create_indexes()"
gunicorn -t 300 -w 2 -b 0.0.0.0:5005 --log-level debug app:app
