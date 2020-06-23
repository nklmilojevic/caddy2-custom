FROM caddy:2.0.0-builder AS builder

RUN caddy-builder \
  github.com/caddy-dns/cloudflare \
  github.com/gamalan/caddy-tlsredis

FROM caddy:2.0.0

COPY --from=builder /usr/bin/caddy /usr/bin/caddy

CMD ["caddy", "run", "--environ", "--config", "/etc/caddy/Caddyfile", "--adapter", "caddyfile"]