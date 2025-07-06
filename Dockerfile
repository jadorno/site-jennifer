FROM debian:bookworm as build

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update \
    && apt install -y --no-install-recommends wget ca-certificates \
    && wget "https://deb.nodesource.com/setup_18.x" -O /tmp/setup_18.x \
    && bash /tmp/setup_18.x \
    && apt install -y --no-install-recommends nodejs \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /workspaces/site-jennifer

COPY . /workspaces/site-jennifer

RUN npm install \
    && bash scripts/build-svg.bash > assets/icons.svg \
    && npm run build

FROM nginx:stable-alpine

COPY --from=build /workspaces/site-jennifer/build /usr/share/nginx/html
COPY config/nginx.conf /etc/nginx/nginx.conf
