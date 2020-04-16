FROM python:3.8-buster

ENV PYTHONUNBUFFERED 1

RUN pip install --upgrade pip
COPY ./requirements.pip /requirements.pip
RUN pip install -r /requirements.pip

RUN mkdir /app
WORKDIR /app
COPY ./app /app
