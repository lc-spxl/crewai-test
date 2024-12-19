FROM ubuntu:24.04

RUN apt update -q && apt install python3-venv -y
RUN python3 -m venv .venv
RUN .venv/bin/pip3 install 'crewai[tools]' 

WORKDIR /app
ENV PATH=$PATH:/.venv/bin