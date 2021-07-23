FROM jupyter/scipy-notebook:python-3.9.5
LABEL maintainer="tanayupadhyaya@gmail.com"

USER root
RUN sudo apt update && sudo apt install -y graphviz

