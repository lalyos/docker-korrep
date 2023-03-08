FROM nginx:1.23-alpine-slim

RUN apk add \
  cmd:psql \
  bash

COPY start.sh /
RUN chmod +x /start.sh
ENTRYPOINT [ "/start.sh" ]