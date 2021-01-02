# caddy2-custom

Caddy2 docker image with following plugins:

- [Cloudflare DNS](https://github.com/caddy-dns/cloudflare) - for getting certificates via dns-01
- [Redis](https://github.com/gamalan/caddy-tlsredis) - store your certificates in Redis instead of files
- [RealIP](https://github.com/kirsch33/realip) - forward real ip to Caddy (useful if you are behind Cloudflare)
- [Auth JWT](https://github.com/greenpau/caddy-auth-jwt) - JWT Authorization plugin
- [Auth Portal](https://github.com/greenpau/caddy-auth-portal) - authentication via oauth2 (Google, GitHub, etc)

To pull the image:

`docker pull ghcr.io/nklmilojevic/caddy2-custom:0.0.4`