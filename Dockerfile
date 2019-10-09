FROM openjdk

EXPOSE 2181 9092 9093 9094 9095

COPY kafka-2.3.0 /vape/kafka

COPY resources /vape/resources

COPY scripts/vape-docker-kafka-start.sh /vape/

RUN mv /vape/vape-docker-kafka-start.sh /usr/bin

ENTRYPOINT ["vape-docker-kafka-start.sh"]

CMD ["", ""]

