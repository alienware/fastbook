FROM jupyter/scipy-notebook:python-3.9.5
LABEL maintainer="tanayupadhyaya@gmail.com"

USER root

COPY ./fastbook.service /etc/systemd/system/fastbook.service
RUN sudo systemctl daemon-reload && \
    sudo systemctl enable fastbook

RUN sudo apt update && sudo apt install -y graphviz
RUN pip install graphviz

