FROM python:3.7-slim

# copy project into container
COPY app.py uswgi.ini /app/

# install dependencies, upgrade existing packages and copy application into container
COPY requirements.pip /

RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get -y install build-essential
RUN pip install --upgrade pip
RUN pip install -r requirements.pip

WORKDIR /app
