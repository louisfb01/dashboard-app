FROM node:16-alpine3.13 as base-node-modules

WORKDIR /usr/src/build

RUN apk update \
    && apk add openssl

ARG BUILD_ENV=prod

COPY ./ ./

RUN apk --no-cache add git
RUN git submodule update --init --recursive

ARG VUE_APP_CODA_DASHBOARD_KEYCLOAK_URL=${VUE_APP_CODA_DASHBOARD_KEYCLOAK_URL}
ARG VUE_APP_CODA_DASHBOARD_KEYCLOAK_REALM=${VUE_APP_CODA_DASHBOARD_KEYCLOAK_REALM}
ENV VUE_APP_CODA_DASHBOARD_KEYCLOAK_URL=${VUE_APP_CODA_DASHBOARD_KEYCLOAK_URL}
ENV VUE_APP_CODA_DASHBOARD_KEYCLOAK_REALM=${VUE_APP_CODA_DASHBOARD_KEYCLOAK_REALM}

RUN touch .env
RUN echo "VUE_APP_CODA_DASHBOARD_BACKEND_URL=${VUE_APP_CODA_DASHBOARD_BACKEND_URL}\n" > .env
RUN echo "VUE_APP_CODA_DASHBOARD_KEYCLOAK_REALM=${VUE_APP_CODA_DASHBOARD_KEYCLOAK_REALM}" > .env
RUN cat .env

RUN yarn cache clean
RUN yarn install
RUN rm -f .npmrc
RUN yarn build

FROM node:16-alpine3.13

RUN npm install -g http-server

RUN apk update \
    && apk add openssl

WORKDIR /usr/src/app
COPY --from=base-node-modules /usr/src/build ./

# Make build footprint version for easier debugging.
RUN rm ./version.txt
RUN openssl rand -hex 12 > version.txt

EXPOSE 8080
CMD [ "http-server", "--port", "8080",  "dist" ]