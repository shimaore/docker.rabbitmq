FROM shimaore/debian

RUN apt-get update && apt-get install -y --no-install-recommends \
    rabbitmq-server

RUN rabbitmq-plugins enable \
    rabbitmq_management \
    sockjs
USER rabbitmq
CMD /usr/sbin/rabbitmq-server
# See https://www.rabbitmq.com/configure.html
# 5672: Node Port
# 25672: Dist Port
# 15672: Management Port
# 54005 (localhost): ?
# 32944 (localhost): ?
EXPOSE 4369 15672 25672
