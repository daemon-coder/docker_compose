FROM ubuntu:16.04

COPY ./soa-agent /home/soa-agent

RUN mkdir -p /home/work/logs \
    && chmod -R 777 /home/work/logs

CMD  /home/soa-agent/release/bin/soa-agent -c /home/soa-agent/release/config/config.ini
