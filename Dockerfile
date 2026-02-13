FROM docker.elastic.co/elasticsearch/elasticsearch:9.2.0

LABEL maintainer="Aad Versteden <aad.versteden@redpencil.io>"

ENV MAX_MAP_COUNT=262144
ENV ES_JAVA_OPTS="-Xms2g -Xmx2g"
ENV discovery.type=single-node

RUN printf "\nxpack.security.enabled: false\nxpack.security.enrollment.enabled: false\n" >> /usr/share/elasticsearch/config/elasticsearch.yml
RUN sed -i '/-Des.bundled_jdk*/a    -Dlog4j2.formatMsgNoLookups=true \\' /usr/share/elasticsearch/bin/elasticsearch
