FROM alpine:3

RUN apk update; apk add rtl_433

COPY runrtl.sh /

#CMD rtl_433 -v -M time:tz -M protocol -M level -C si -F "mqtt://files:30003,user=mqtt:mqtt,pass=OLIR54wweXmBL3FGan5R,retain=1" -F json