FROM python:3.12.8-slim

RUN apt update

RUN pip install flask

COPY app /app
WORKDIR /app

CMD python main.py