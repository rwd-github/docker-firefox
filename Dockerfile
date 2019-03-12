#FROM ubuntu-bastelbase
FROM rwd1/ubuntu-bastelbase


RUN apt-get update && apt-get upgrade -y && \
        apt-get install -y firefox icedtea-plugin && \
        apt-get clean

ADD entrypoint.sh /
ADD additionalhosts.txt /

RUN chmod +x /entrypoint.sh

USER user
CMD /entrypoint.sh
#CMD /usr/bin/firefox

