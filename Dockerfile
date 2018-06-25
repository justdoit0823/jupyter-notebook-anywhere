FROM python:3

LABEL maintainer="justdoit920823@gmail.com"

COPY requirements.txt /tmp/
RUN pip install --no-cache-dir -r /tmp/requirements.txt

RUN groupadd -g 1024 notebook && \
    useradd -mr -u 1024 -g notebook -d /home/notebook notebook

USER notebook

WORKDIR /home/notebook/notes

ENTRYPOINT ["jupyter-notebook"]
CMD []
