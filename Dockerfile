FROM docker.elastic.co/logstash/logstash:8.8.0
RUN  LS_HEAP_SIZE="2048m" bin/logstash-plugin install logstash-output-opensearch