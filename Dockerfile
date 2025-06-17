FROM docker.elastic.co/elasticsearch/elasticsearch:7.17.28

LABEL maintainer="Aad Versteden <aad.versteden@redpencil.io>"

ENV TAKE_FILE_OWNERSHIP /usr/share/elasticsearch/data
ENV MAX_MAP_COUNT 262144
ENV ES_JAVA_OPTS "-Xms2g -Xmx2g"

RUN sed -i '/-Des.bundled_jdk*/a    -Dlog4j2.formatMsgNoLookups=true \\' /usr/share/elasticsearch/bin/elasticsearch
