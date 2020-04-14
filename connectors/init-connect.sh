curl -X POST http://kafkaconnect:8083/connectors -H "Content-Type: application/json" -d @config/albums.json
curl -X POST http://kafkaconnect:8083/connectors -H "Content-Type: application/json" -d @config/artists.json
curl -X POST http://kafkaconnect:8083/connectors -H "Content-Type: application/json" -d @config/genres.json