FROM python:3.11

WORKDIR /opt/app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ENV DJANGO_SETTINGS_MODULE 'kittygram_backend.settings'

COPY ./backend/requirements.txt requirements.txt

RUN  pip install --upgrade pip \
     && pip install --no-cache-dir -r requirements.txt

COPY ./backend/ .

RUN python manage.py collectstatic --noinput

ENTRYPOINT ["python", "manage.py", "runserver", "0.0.0.0:8000"]