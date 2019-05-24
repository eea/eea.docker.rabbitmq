# EEA RabbitMQ Docker image

RabbitMQ with `shovel` plugin enabled.


### Supported tags and respective Dockerfile links

  - `:latest` [*Dockerfile*](https://github.com/eea/eea.docker.rabbitmq/blob/master/Dockerfile)


### Stable and immutable tags

  - `:3.7.15-1` [*Dockerfile*](https://github.com/eea/eea.docker.rabbitmq/tree/3.7.15-1/Dockerfile)

See [older versions](https://github.com/eea/eea.docker.rabbitmq/releases)


### Changes

 - [CHANGELOG.md](https://github.com/eea/eea.docker.rabbitmq/blob/master/CHANGELOG.md)


## Usage

```bash
    $ docker run -p 15672:15672 -e RABBITMQ_DEFAULT_USER=admin -e RABBITMQ_DEFAULT_PASS=secret eeacms/rabbitmq
```

[See more](https://hub.docker.com/_/rabbitmq) about RabbitMQ usage.

To send and consume RabbitMQ messages you can use [eeacms/celery](https://hub.docker.com/r/eeacms/celery) Docker image.


## Copyright and license

The Initial Owner of the Original Code is European Environment Agency (EEA).
All Rights Reserved.

The Original Code is free software;
you can redistribute it and/or modify it under the terms of the GNU
General Public License as published by the Free Software Foundation;
either version 2 of the License, or (at your option) any later
version.


## Funding

[European Environment Agency (EU)](http://eea.europa.eu)