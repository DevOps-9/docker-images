FROM gliderlabs/alpine:3.2

RUN apk add --update \
    python \
    py-pip \
    build-base \
    curl \
  && pip install virtualenv \
  && rm -rf /var/cache/apk/*

WORKDIR /app

ONBUILD COPY . /app
ONBUILD RUN virtualenv -p /usr/bin/python /env && /env/bin/pip install -r /app/requirements.txt

CMD ["/env/bin/python", "main.py"]
