FROM python:3.6.5

ADD . /app
WORKDIR /app

RUN pip install pytest
