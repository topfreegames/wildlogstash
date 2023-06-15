FROM docker.elastic.co/logstash/logstash:8.5.1
RUN bin/logstash-plugin install logstash-output-opensearch