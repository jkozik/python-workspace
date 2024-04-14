FROM jupyter/tensorflow-notebook

USER root

RUN pip install --upgrade pip && \
    pip install transformers && \
    pip install pysrt && \
    fix-permissions "/home/$NB_USER"

COPY translator.ipynb captions_english.srt ./