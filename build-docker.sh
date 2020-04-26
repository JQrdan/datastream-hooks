docker build . -t jqrdan/datastream-hooks-topics:1.0.0 -f topics/Dockerfile
docker build . -t jqrdan/datastream-hooks-connectors:1.0.0 -f connectors/Dockerfile
docker build . -t jqrdan/datastream-hooks-dashboards:1.0.0 -f dashboards/Dockerfile