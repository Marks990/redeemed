# Build app into a docker image.
FROM python:3-slim

WORKDIR /tools/

COPY $PWD/requirements.txt requirements.txt

RUN pip install -r requirements.txt

WORKDIR /app

EXPOSE 8000
# CMD [ "sleep 100000;"]
# CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]