FROM rabbitmq:3.7.15-management
RUN rabbitmq-plugins enable --offline rabbitmq_shovel rabbitmq_shovel_management
