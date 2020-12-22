FROM caddy:2-builder AS builder

RUN caddy-builder \
  github.com/caddy-dns/cloudflare \
  github.com/gamalan/caddy-tlsredis \
  github.com/kirsch33/realip \
  github.com/greenpau/caddy-auth-portal \
  github.com/greenpau/caddy-auth-jwt

FROM caddy:2-alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy

CMD ["caddy", "run", "--environ", "--config", "/etc/caddy/Caddyfile", "--adapter", "caddyfile"]
