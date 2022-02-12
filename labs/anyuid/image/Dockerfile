FROM registry.access.redhat.com/ubi7/ubi:7.9 

MAINTAINER Gomes AR

LABEL name="gomesar9"
LABEL lab="anyuid"
LABEL version="1.0"

WORKDIR /app

COPY startup.sh /app/

CMD [ "/bin/bash", "/app/startup.sh" ]
