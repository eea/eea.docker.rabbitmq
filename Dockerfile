FROM rabbitmq:3.13.2-management-alpine
RUN rabbitmq-plugins enable --offline rabbitmq_shovel rabbitmq_shovel_management
