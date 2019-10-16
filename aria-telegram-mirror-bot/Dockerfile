FROM alpine:edge

# install ca-certificates so that HTTPS works consistently
RUN apk add --no-cache ca-certificates

RUN apk add --no-cache --update \
      git \
      bash \
      nodejs \
      npm \
      aria2

# To handle not get uid/gid error while installing a npm package
RUN npm config set unsafe-perm true

RUN npm install -g typescript

RUN mkdir /bot
RUN mkdir /tempclone
RUN chmod 777 /bot
run chmod 777 /tempclone
WORKDIR /tempclone

RUN git clone https://github.com/architdate/aria-telegram-mirror-bot /tempclone
COPY ./aria-telegram-mirror-bot /bot
WORKDIR /bot

COPY ./src/.constants.js /bot/src/
COPY ./aria*.sh ./client_secret.json ./credentials.json ./start.sh /bot/

CMD ["npm","install"]
CMD ["tsc"]
CMD ["bash","start.sh"]
