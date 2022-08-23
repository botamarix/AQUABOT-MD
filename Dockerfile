FROM twinsym/sanuwa-official:md-beta

RUN git clone https://github.com/sanuwaofficial/twinsym/root/twinsym
WORKDIR /root/twinsym/
ENV TZ=Europe/Istanbul
RUN yarn add supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]


