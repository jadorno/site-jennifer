FROM debian:bookworm as build

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update \
    && curl -sL https://deb.nodesource.com/setup_18.x | sudo -E bash - \
    && apt-get install -y --no-install-recommends nodejs \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /workspaces/site-jennifer

COPY package-lock.json /workspaces/site-jennifer/package-lock.json
COPY package.json /workspaces/site-jennifer/package.json
RUN npm install

COPY . /workspaces/site-jennifer

RUN bash scripts/build-svg.bash > assets/icons.svg \
    && npm run build

FROM nginx:stable-alpine

COPY --from=build /workspaces/site-jennifer/build /usr/share/nginx/html
COPY config/nginx.conf /etc/nginx/nginx.conf
