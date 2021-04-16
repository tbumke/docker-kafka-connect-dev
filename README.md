# dkr-kafka-connect-dev

This image uses the official [confluent image](https://hub.docker.com/r/confluentinc/cp-kafka-connect) and changes the execution mode to standalone for development purposes. You shouldn't use this in production !!!

## Usage

Clone this repository and modify `.env` and `connector.properties` according to your environment.

```shell
cp .env.example .env
cp connector.properties.example connector.properties
```

Place your client certificate and (if needed) jdbc-driver into the respective directories. Then start the container using the provided compose script.

```shell
docker compose up -d
```

## Windows users only

If you're working on a Windows machine, you need to update the volume paths in the `docker-compose.yml` as follows:

```yaml
volumes:
    - .\ssl:/ssl:ro
    - .\jdbc-driver:/usr/share/java/kafka-connect-jdbc/jars:rw
    - .\test.txt:/tmp/test.txt:ro
    - .\connector.properties:/etc/kafka-connect/connector.properties:ro
```
