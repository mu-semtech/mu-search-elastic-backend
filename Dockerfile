FROM docker.elastic.co/elasticsearch/elasticsearch:6.4.1

LABEL maintainer="Aad Versteden <aad.versteden@redpencil.io>"

RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install --batch ingest-attachment

ENV TAKE_FILE_OWNERSHIP /usr/share/elasticsearch/data
ENV MAX_MAP_COUNT 262144
ENV ES_JAVA_OPTS "-Xms2g -Xmx2g"
