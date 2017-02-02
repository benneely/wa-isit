cd /app && uwsgi --http :5000 --wsgi-file app.py --processes 4 --threads 2 --stats 0.0.0.0:9191
