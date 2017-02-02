FROM jupyter/scipy-notebook

RUN pip install uwsgi flask

RUN conda install -y -c https://conda.binstar.org/menpo opencv

COPY . /app
WORKDIR /app

CMD uwsgi --http :5000 --wsgi-file app.py --processes 4 --threads 2 --stats 0.0.0.0:9191
