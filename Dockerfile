FROM openjdk

EXPOSE 2181 2891 3881 9092

COPY kafka-2.3.0 /vape/kafka

COPY resources /vape/resources

COPY scripts/vape-docker-kafka-start.sh /vape/

RUN mv /vape/vape-docker-kafka-start.sh /usr/bin

ENTRYPOINT ["vape-docker-kafka-start.sh"]

CMD ["", ""]

