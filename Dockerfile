FROM nvidia/cuda:11.7.0-runtime-ubuntu22.04

RUN apt update && \
    apt install -y python3 python3-pip git && \
    rm -rf /var/lib/apt/lists/* && \
    pip3 install --upgrade pip setuptools-rust cpython

COPY requirements.txt /requirements.txt

RUN pip3 install -r /requirements.txt

RUN git clone https://github.com/Sleepychord/Image-Local-Attention /tmp/image
#
#&& \
#    cd /tmp/image && \
#    python3 setup.py install
