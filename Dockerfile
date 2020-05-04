FROM ubuntu:18.04

WORKDIR /usr/src/appbot

RUN apt update
RUN apt upgrade -y
RUN apt install python3-pip -y 
COPY requirements.txt ./
RUN pip3 install -r requirements.txt

COPY . /usr/src/appbot

ENTRYPOINT ["python3", "main.py"]
