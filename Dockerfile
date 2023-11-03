FROM debian:bullseye as build

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update && apt upgrade -y \
    && apt-get install -y --no-install-recommends ruby-full build-essential zlib1g-dev \
    && rm -rf /var/lib/apt/lists/*

RUN gem install bundler \
    && bundle config --global frozen 1 \
    && gem install jekyll

WORKDIR /workspaces/jadorno-site-jennifer

COPY .devcontainer/Gemfile /workspaces/jadorno-site-jennifer/Gemfile
COPY .devcontainer/Gemfile.lock /workspaces/jadorno-site-jennifer/Gemfile.lock
RUN bundle install

COPY . /workspaces/jadorno-site-jennifer

RUN bundle exec jekyll build

FROM nginx:stable-alpine

COPY --from=build /workspaces/jadorno-site-jennifer/build /usr/share/nginx/html