FROM confluentinc/cp-kafka-connect:latest
COPY --chown=appuser:appuser etc/confluent/docker/configure /etc/confluent/docker/configure
COPY --chown=appuser:appuser etc/confluent/docker/launch /etc/confluent/docker/launch
