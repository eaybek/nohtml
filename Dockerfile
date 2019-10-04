FROM ubuntu:latest

RUN apt-get update
RUN apt-get -y install \
    python3 \
    python3-venv \
    python3-pip

RUN pip3 install setuptools

COPY /home/erdem/Ws/PyPi/nohtml/nohtml/ /root/packages/nohtml/
WORKDIR /root/packages/nohtml
RUN pip3 install /root/packages/nohtml

CMD ["python3","test/nohtml.py"]


