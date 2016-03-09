# RabbitMQ Docker orchestration for EEA

Docker orchestration for EEA [**RabbitMQ**](http://www.rabbitmq.com/) service

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
    $ # edit user and password for rabbitmq daemon and management plugin

Start container

    $ docker-compose up -d
    $ docker-compose logs

## Example usage

- [Tutorials](https://www.rabbitmq.com/getstarted.html) using the pika 0.10.0 Python client
- [Management plugin] (https://www.rabbitmq.com/management.html) that provides an HTTP-based API for management and monitoring of your RabbitMQ server
- [Management Command Line Tool] (http://www.rabbitmq.com/management-cli.html) that provides a command line tool rabbitmqadmin (python script) which can perform the same actions as the web-based UI

Using rabbitmqadmin.py

    $ python rabbitmqadmin.py -H HOST -P PORT -u USERNAME -p PASSWORD -f pretty_json list queues vhost name node durable messages
    $ # returns a JSON structure like this
    $ # [
    $ #   {
    $ #     "durable": true,
    $ #     "messages": 2,
    $ #     "name": "odp_queue",
    $ #     "node": "rabbit@2e7a21533b6b",
    $ #     "vhost": "/"
    $ #   }
    $ # ]

If the service is down

    $ # *** Could not connect: [Errno 111] Connection refused

If the credentials are invalid

    $ # *** Access refused: /api/queues?columns=vhost,name,node,durable,messages

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
