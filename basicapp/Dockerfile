# Build app into a docker image.
FROM python:3-slim

WORKDIR /tools/requirements.txt

COPY $PWD/requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY $PWD/mak /apps/mak

WORKDIR /apps/mak

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]