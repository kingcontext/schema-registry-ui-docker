# schema-registry-ui-image

Docker image for Landoop's [schema-registry-ui](https://github.com/Landoop/schema-registry-ui) v.0.3, running on an nginx.

The schema-registry-ui connect to Confluent's [schema-registry](https://github.com/confluentinc/schema-registry) that is a vital part of the [Confluent stream data platform](http://www.confluent.io/product).

The image requires the configuration of the schema-registry-url to connect to, e.g. running in another docker container on the same docker network.

Run it by executing  

```
docker run -d --name schema-registry-ui -e "SCHEMA_REGISTRY_URL=http://schema-registry:8881" -t kingcontext/schema-registry-ui
```

... and point your browser to (the default) port 80 of the container.
