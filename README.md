# docker-cqlsh-astra

[![Docker Pulls](https://img.shields.io/docker/pulls/kijanowski/docker-cqlsh-astra.svg)](https://hub.docker.com/r/kijanowski/docker-cqlsh-astra/)
[![license](https://img.shields.io/github/license/kijanowski/docker-cqlsh-astra.svg)](https://github.com/kijanowski/docker-cqlsh-astra/blob/master/LICENSE)

The purpose of `docker-cqlsh-astra` is to run cql commands against [Astra](https://astra.datastax.com).

This repo hosts the source code for the [Standalone CQL shell](https://docs.datastax.com/en/astra/docs/connect/cql/connect-cqlsh.html#_standalone_cql_shell) **Docker image**.

It is not an official DataStax image. It does not ship the CQL shell application, but downloads it from the [DataStax Tools page](https://downloads.datastax.com/#cqlsh). Likewise, when downloading manually you agree to the [CQLSH License Terms](https://www.datastax.com/legal/datastax-cqlsh-license-terms).

## Run the image

Before running the image, create an `astra` directory and copy the secure connect bundle zip file. To run scripts
instead of getting access to the cql shell, add `*.cql` files to the `astra` directory. For more details visit this [blog post]().

```
docker run -ti -v $PWD/astra:/astra -e ASTRA_TOKEN=AstraCS:xyz:123 --rm kijanowski/docker-cqlsh-astra

...

Connected to cndb at 127.0.0.1:9042.
[cqlsh 6.8.0 | Cassandra 4.0.0.6816 | CQL spec 3.4.5 | Native protocol v4]
Use HELP for help.
token@cqlsh>
```

If the download URL changes, you can override the built-in value with the `CQLSH_DOWNLOAD_URL` environment variable.

## License

This project is licensed under the Apache 2.0 License - see the [LICENSE](./LICENSE) file for details.