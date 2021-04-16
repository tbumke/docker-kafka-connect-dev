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
