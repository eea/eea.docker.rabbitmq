# RabbitMQ Docker orchestration for EEA main portal

Docker orchestration for EEA main portal [**RabbitMQ**](http://www.rabbitmq.com/) service

## Base docker image

 - [hub.docker.com](https://hub.docker.com/_/rabbitmq/)

## Prerequisites

- Install [Docker](https://docs.docker.com/installation/)
- Install [Compose](https://docs.docker.com/compose/install/)

## Installation

Clone the repository

    $ git clone https://github.com/eea/eea.docker.rabbitmq.git
    $ cd eea.docker.rabbitmq

During the first time deployement, create and edit the secret environment file

    $ cp .secret.example .secret
    $ vim .secret
    $ # edit user and password for rabbitmq daemon and management interface

Start containers

    $ docker-compose up -d
    $ docker-compose logs

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
