FROM python:3.9.13-alpine3.16

RUN mkdir /astra

ENV CQLSH_DOWNLOAD_URL="https://downloads.datastax.com/enterprise/cqlsh-astra.tar.gz"

COPY ["entrypoint.sh", "/usr/local/bin"]

ENTRYPOINT ["entrypoint.sh"]
