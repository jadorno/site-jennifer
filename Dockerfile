FROM debian:bullseye as build

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update && apt upgrade -y \
    && apt-get install -y --no-install-recommends ruby-full build-essential zlib1g-dev \
    && rm -rf /var/lib/apt/lists/*

RUN gem install bundler \
    && bundle config --global frozen 1 \
    && gem install jekyll

WORKDIR /workspaces/site-jennifer

COPY .devcontainer/Gemfile /workspaces/site-jennifer/Gemfile
COPY .devcontainer/Gemfile.lock /workspaces/site-jennifer/Gemfile.lock
RUN bundle install

COPY . /workspaces/site-jennifer

RUN bundle exec jekyll build

FROM nginx:stable-alpine

COPY --from=build /workspaces/site-jennifer/build /usr/share/nginx/html
COPY config/nginx.conf /etc/nginx/nginx.conf
