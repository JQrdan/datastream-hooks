curl -X POST http://kibana:5601/api/saved_objects/_import -H "kbn-xsrf: true" --form file=@resources/MusicDashboard.ndjson
curl -X POST http://kibana:5601/api/saved_objects/_import -H "kbn-xsrf: true" --form file=@resources/KafkaDashboard.ndjson
curl -X POST http://kibana:5601/api/saved_objects/_import -H "kbn-xsrf: true" --form file=@resources/KafkaTraffic.ndjson
exit 0