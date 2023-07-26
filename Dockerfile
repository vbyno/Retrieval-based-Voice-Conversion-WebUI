# syntax=docker/dockerfile:1

FROM python:3.10-bullseye

EXPOSE 7865

WORKDIR /app

RUN apt update -y && apt install ffmpeg -y

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

CMD ["python3", "infer-web.py"]
