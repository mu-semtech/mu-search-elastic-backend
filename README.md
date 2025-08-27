# mu-search-elastic-backend

This is the elasticsearch backend for
[mu-search](https://github.com/mu-semtech/mu-search/).  It is to be
used in conjunction with that microservice.  Please see the README of
mu-search in order to use this component.

This image is based on elasticsearch and includes the components which
are commonly expected to be available for mu-search.

## Tutorials
### Add Elasticsearch to your stack

``` yaml
services:
  elasticsearch:
    image: semtech/mu-search-elastic-backend:1.2.0
    environment:
      discovery.type: "single-node"
    volumes:
      - ./data/elasticsearch/:/usr/share/elasticsearch/data
```

## How-to guides
### How to increase the max content length
Set the environment variable `http.max_content_length` on your `elasticsearch` services to change the max content length.

E.g.
```yaml
services:
  elasticsearch:
    image: semtech/mu-search-elastic-backend:1.2.0
    environment:
      http.max_content_length: 2000M # Set to 2GB
```

(Re)create the service using `docker compose up -d elasticsearch`.

### How to increase the Java heap space
Set the environment variable `ES_JAVA_OPTS` on your `elasticsearch` services to change the Java heap space (and other Java related options).

E.g.
```yaml
services:
  elasticsearch:
    image: semtech/mu-search-elastic-backend:1.2.0
    environment:
      ES_JAVA_OPTS: "-Xms16g -Xmx16g"
```

(Re)create the service using `docker compose up -d elasticsearch`.
