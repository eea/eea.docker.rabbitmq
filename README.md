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

### Data migration

You can access production data inside `rabbitmq_data` container at:

    /var/lib/rabbitmq

Thus:

1. Start **rsync client** on host where do you want to migrate data (DESTINATION HOST):

  ```
    $ docker run -it --rm --name=r-client --volumes-from=eeadockerrabbitmq_rabbitmq_data_1 eeacms/rsync sh
  ```

2. Start **rsync server** on host from where do you want to migrate data (SOURCE HOST):

  ```
    $ docker run -it --rm --name=r-server -p 2222:22 --volumes-from=eeadockerrabbitmq_rabbitmq_data_1 \
                 -e SSH_AUTH_KEY="<SSH-KEY-FROM-R-CLIENT-ABOVE>" \
             eeacms/rsync server
  ```

3. Within **rsync client** container from step 1 run:

  ```
    $ rsync -e 'ssh -p 2222' -avz root@<SOURCE HOST IP>:/var/lib/rabbitmq/ /var/lib/rabbitmq/
  ```


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
