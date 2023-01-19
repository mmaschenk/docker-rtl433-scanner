FROM alpine:3

RUN apk update; apk add rtl_433

COPY runrtl.sh /

CMD /runrtl.sh