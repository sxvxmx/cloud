FROM ubuntu

RUN apt-get update && apt-get install -y postgresql-client

WORKDIR /root

CMD ["tail", "-f", "/dev/null"]