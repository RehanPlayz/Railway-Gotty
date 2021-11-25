FROM debian:buster

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y curl && curl -sSLo gotty https://raw.githubusercontent.com/afnan007a/Replit-Vm/main/gotty
RUN chmod +x gotty && mv gotty /usr/bin/

CMD gotty -w bash
