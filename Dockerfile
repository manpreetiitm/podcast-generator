FROM ubuntu:latest
FROM python:3.6-alpine

RUN apt-get update && apt-get install -y \
   python3.6-alpine \
   python3-pip \
   git
RUN --mount=type=cache,target=/root/.cache/pip pip install pyyaml

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
