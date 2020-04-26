curl -X POST http://kibana:5601/api/kibana/dashboards/import -H "Content-Type: application/json" -d @resources/MusicDashboard.ndjson
curl -X POST http://kibana:5601/api/kibana/dashboards/import -H "Content-Type: application/json" -d @resources/KafkaDashboard.ndjson
exit 0