FROM ubuntu:18.04

RUN apt-get update -y
RUN apt-get install -y python2.7 python-pip
RUN pip install flask

ADD . /
EXPOSE 5000

ENTRYPOINT ["python", "main.py"]
