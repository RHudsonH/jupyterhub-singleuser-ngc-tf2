FROM nvcr.io/nvidia/tensorflow:23.01-tf2-py3

COPY ./conf /conf/

RUN pip install --upgrade pip && \
    pip install jupyterhub==3.1.1 && \
    useradd -m jovyan

ENV HOME=/home/jovyan
WORKDIR $HOME
USER jovyan

CMD [ "jupyterhub-singleuser" ]
