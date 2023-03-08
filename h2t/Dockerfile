FROM alpine:3.17
RUN apk add \
  curl \
  html2text \
  bash

COPY start.sh /
RUN chmod +x /start.sh
ENTRYPOINT [ "/start.sh"]

