from elixir:slim

ENV LANG en_US.UTF-8
ENV APP_DIR /egghat_server

RUN apt update -y && apt upgrade -y && \
    apt install curl -y && \
    curl -sL https://deb.nodesource.com/setup_14.x | bash - && \
    apt install gcc g++ make nodejs inotify-tools postgresql-client -y

RUN mkdir $APP_DIR

COPY . $APP_DIR

WORKDIR $APP_DIR

RUN mix local.hex --force && \
    mix archive.install --force hex phx_new && \
    mix local.rebar --force && \
    mix deps.get --force

WORKDIR assets

RUN npm install && \
    node node_modules/webpack/bin/webpack.js --mode development

WORKDIR $APP_DIR

EXPOSE 4000

CMD ["mix", "phx.server"]

