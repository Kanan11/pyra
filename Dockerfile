FROM node:16-alpine


EXPOSE 80
EXPOSE 443
WORKDIR /app
ENV PORT=80
ENV NODE_ENV=production

COPY .git ./.git
RUN apk add git \
  && git reset --hard \
  && yarn \
  && yarn build

CMD yarn start
