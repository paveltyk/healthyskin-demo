FROM node:10-alpine AS assets
WORKDIR /app/assets
COPY ./assets /app/assets
RUN yarn install && yarn build

FROM elixir:1.9.1-alpine
ARG MIX_ENV=prod
ARG DATABASE_URL=postgres://postgres:postgres@localhost/healthyskin_dev
ARG SECRET_KEY_BASE=secret
ENV MIX_HOME=/root/.mix
WORKDIR /app
COPY . /app
COPY --from=assets /app/assets/build /app/assets/build
RUN mix local.hex --force && mix local.rebar --force && mix do deps.get, compile
CMD mix phx.server
