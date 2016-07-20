FROM nginx:alpine

USER root

ADD schema-registry-ui.tar.gz /schema-registry-ui

COPY env.js.template /schema-registry-ui/
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

ENTRYPOINT ["sh", "-c", "envsubst < /schema-registry-ui/env.js.template > /schema-registry-ui/app/src/env.js && nginx -g 'daemon off;'"]
