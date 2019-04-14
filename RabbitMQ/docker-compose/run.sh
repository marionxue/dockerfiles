#!/bin/bash


mkdir -pv /var/log/rabbitmq/
mkdir -pv /data/rabbitmq/data
mkdir -pv /apps/rabbitmq/config

cp ./rabbitmq.config /apps/rabbitmq/config/
