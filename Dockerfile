FROM caddy:2-builder AS builder

RUN caddy-builder \
  github.com/caddy-dns/cloudflare \
  github.com/gamalan/caddy-tlsredis \
  github.com/hairyhenderson/caddyprom
FROM caddy:2-alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy

CMD ["caddy", "run", "--environ", "--config", "/etc/caddy/Caddyfile", "--adapter", "caddyfile"]
