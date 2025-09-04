FROM alpine:3.22
EXPOSE 7575:7575
VOLUME ["/data"]
RUN apk add --no-cache usbutils wget
RUN mkdir -p /data
COPY start-virtualhere.sh /etc/start-virtualhere.sh
CMD sh "/etc/start-virtualhere.sh" 
