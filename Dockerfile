FROM debian:buster-slim
LABEL maintainer="ForumPlayer"

EXPOSE 30110/tcp
EXPOSE 30110/udp
EXPOSE 30120/tcp
EXPOSE 30120/udp

WORKDIR /FXServer
VOLUME /FXServer/server-data

RUN apt update && apt install -y wget nano bash-completion xz-utils

COPY setup.sh .

RUN chmod +x setup.sh
RUN ./setup.sh

CMD ["/FXServer/server/run.sh"]
