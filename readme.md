# wild-logstash

custom build of logstash for support opensearch

### plugins included

```shell
$ make list-plugins

logstash-codec-avro (3.4.0)
logstash-codec-cef (6.2.6)
logstash-codec-collectd (3.1.0)
logstash-codec-dots (3.0.6)
logstash-codec-edn (3.1.0)
logstash-codec-edn_lines (3.1.0)
logstash-codec-es_bulk (3.1.0)
logstash-codec-fluent (3.4.2)
logstash-codec-graphite (3.0.6)
logstash-codec-json (3.1.1)
logstash-codec-json_lines (3.1.0)
logstash-codec-line (3.1.1)
logstash-codec-msgpack (3.1.0)
logstash-codec-multiline (3.1.1)
logstash-codec-netflow (4.3.0)
logstash-codec-plain (3.1.0)
logstash-codec-rubydebug (3.1.0)
logstash-filter-aggregate (2.10.0)
logstash-filter-anonymize (3.0.6)
logstash-filter-cidr (3.1.3)
logstash-filter-clone (4.2.0)
logstash-filter-csv (3.1.1)
logstash-filter-date (3.1.15)
logstash-filter-de_dot (1.0.4)
logstash-filter-dissect (1.2.5)
logstash-filter-dns (3.2.0)
logstash-filter-drop (3.0.5)
logstash-filter-elasticsearch (3.15.0)
logstash-filter-fingerprint (3.4.2)
logstash-filter-geoip (7.2.13)
logstash-filter-grok (4.4.3)
logstash-filter-http (1.4.3)
logstash-filter-json (3.2.0)
logstash-filter-kv (4.7.0)
logstash-filter-memcached (1.2.0)
logstash-filter-metrics (4.0.7)
logstash-filter-mutate (3.5.6)
logstash-filter-prune (3.0.4)
logstash-filter-ruby (3.1.8)
logstash-filter-sleep (3.0.7)
logstash-filter-split (3.1.8)
logstash-filter-syslog_pri (3.2.0)
logstash-filter-throttle (4.0.4)
logstash-filter-translate (3.4.0)
logstash-filter-truncate (1.0.5)
logstash-filter-urldecode (3.0.6)
logstash-filter-useragent (3.3.4)
logstash-filter-uuid (3.0.5)
logstash-filter-xml (4.2.0)
logstash-input-azure_event_hubs (1.4.4)
logstash-input-beats (6.6.0)
└── logstash-input-elastic_agent (alias)
logstash-input-couchdb_changes (3.1.6)
logstash-input-dead_letter_queue (2.0.0)
logstash-input-elasticsearch (4.17.0)
logstash-input-exec (3.6.0)
logstash-input-file (4.4.4)
logstash-input-ganglia (3.1.4)
logstash-input-gelf (3.3.2)
logstash-input-generator (3.1.0)
logstash-input-graphite (3.0.6)
logstash-input-heartbeat (3.1.1)
logstash-input-http (3.7.0)
logstash-input-http_poller (5.4.0)
logstash-input-imap (3.2.0)
logstash-input-jms (3.2.2)
logstash-input-pipe (3.1.0)
logstash-input-redis (3.7.0)
logstash-input-snmp (1.3.1)
logstash-input-snmptrap (3.1.0)
logstash-input-stdin (3.4.0)
logstash-input-syslog (3.6.0)
logstash-input-tcp (6.3.2)
logstash-input-twitter (4.1.0)
logstash-input-udp (3.5.0)
logstash-input-unix (3.1.2)
logstash-integration-aws (7.1.1)
 ├── logstash-codec-cloudfront
 ├── logstash-codec-cloudtrail
 ├── logstash-input-cloudwatch
 ├── logstash-input-s3
 ├── logstash-input-sqs
 ├── logstash-output-cloudwatch
 ├── logstash-output-s3
 ├── logstash-output-sns
 └── logstash-output-sqs
logstash-integration-elastic_enterprise_search (2.2.1)
 ├── logstash-output-elastic_app_search
 └──  logstash-output-elastic_workplace_search
logstash-integration-jdbc (5.4.1)
 ├── logstash-input-jdbc
 ├── logstash-filter-jdbc_streaming
 └── logstash-filter-jdbc_static
logstash-integration-kafka (11.2.1)
 ├── logstash-input-kafka
 └── logstash-output-kafka
logstash-integration-rabbitmq (7.3.1)
 ├── logstash-input-rabbitmq
 └── logstash-output-rabbitmq
logstash-output-csv (3.0.8)
logstash-output-elasticsearch (11.15.1)
logstash-output-email (4.1.1)
logstash-output-file (4.3.0)
logstash-output-graphite (3.1.6)
logstash-output-http (5.5.0)
logstash-output-lumberjack (3.1.9)
logstash-output-nagios (3.0.6)
logstash-output-null (3.0.5)
logstash-output-opensearch (2.0.1)
logstash-output-pipe (3.0.6)
logstash-output-redis (5.0.0)
logstash-output-stdout (3.1.4)
logstash-output-tcp (6.1.1)
logstash-output-udp (3.2.0)
logstash-output-webhdfs (3.0.6)
logstash-patterns-core (4.3.4)
```



Contribution
-
Please use pull requests, issues
