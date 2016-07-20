# schema-registry-ui docker image

Docker image for Landoop's [schema-registry-ui](https://github.com/Landoop/schema-registry-ui) v.0.2, running on an nginx.

The schema-registry-ui connect to Confluent's [schema-registry](https://github.com/confluentinc/schema-registry) that is a vital part of the [Confluent stream data platform](http://www.confluent.io/product).

Prerequisites:
1/ The image requires the configuration of the schema-registry-url to connect to, e.g. running in another docker container on the same docker network
2/ A CORS-enabled schema-registry docker image. To enable CORS, start the schema-registry docker image with the following environment variables (docker run -e option):
```
SR_ACCESS_CONTROL_ALLOW_METHODS=GET,POST,OPTIONS
SR_ACCESS_CONTROL_ALLOW_ORIGIN=*
```

No need to build it yourself, it's available as kingcontext/schema-registry-ui. Just run it by executing  

```
docker run -d --name schema-registry-ui -e "SCHEMA_REGISTRY_URL=http://schema-registry:8881" -t kingcontext/schema-registry-ui
```

... and point your browser to (the default) port 80 of the container.
