FROM alpine:3.20

ARG PUBMLST.PY_VER="0.1"

LABEL base.image="alpine:3.20"
LABEL dockerfile.version="1"
LABEL software="pubmlst"
LABEL software.version=$PUBMLST.PY_VER
LABEL description="Query contigs on PubMLST via RESTful API"
LABEL maintainer="Kutluhan Incekara"
LABEL maintainer.email="kutluhan.incekara@ct.gov"

RUN apk add --no-cache wget jq bash py3-requests &&\
    wget -P /usr/local/bin/ https://github.com/Kincekara/pubmlst/raw/main/pubmlst &&\
    chmod 755 /usr/local/bin/pubmlst

CMD ["pubmlst", "-h"]

ENV LC_ALL=C

WORKDIR /data