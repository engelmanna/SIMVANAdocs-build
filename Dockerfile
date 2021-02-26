FROM python:3.8-alpine3.12

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

RUN apk add build-base

RUN pip install --quiet --no-cache-dir mkdocs
RUN pip install --quiet --no-cache-dir mkdocs-material

ENTRYPOINT ["/entrypoint.sh"]
