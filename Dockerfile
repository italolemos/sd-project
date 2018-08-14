FROM python:3.7-slim

ENV PYTHONUNBUFFERED 1

RUN apt-get update && apt-get install -y --no-install-recommends

RUN mkdir /app

WORKDIR /app

ADD requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

ADD . ./

