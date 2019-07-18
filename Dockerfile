FROM docker.elastic.co/elasticsearch/elasticsearch:6.4.1

LABEL maintainer="Aad Versteden <aad.versteden@redpencil.io>"

RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install --batch ingest-attachment
