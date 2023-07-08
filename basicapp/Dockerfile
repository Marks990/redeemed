# Build app into a docker image.
FROM python:3-slim

RUN pip install django

COPY $PWD/mak /apps/mak

WORKDIR /apps/mak

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]