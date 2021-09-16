FROM python:stretch AS base
COPY requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip install -r requirements.txt
COPY . /app
ENTRYPOINT [ "gunicorn", "-b", ":8080", "main:APP" ]