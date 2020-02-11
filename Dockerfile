FROM ubuntu:latest

RUN apt-get update \
  && apt-get install -y python3-pip python3-dev \
  && cd /usr/local/bin \
  && ln -s /usr/bin/python3 python \
  && pip3 install --upgrade pip

ADD piethein_grooks.py /
ADD grooks/grooks.py /grooks/grooks.py
ADD grooks/__init__.py /grooks/__init__.py

CMD [ "python3", "./piethein_grooks.py" ]
