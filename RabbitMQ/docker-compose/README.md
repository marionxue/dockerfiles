部署方式
使用docker-compose在每个节点上运行，注意修改好各个主机节点的IP

1. 集群管理方式rabbitmqctl命令
2. rabbitmq使用的节点类型为disk
3. 4369:集群节点服务发现端口
4. 5672,5671:AMQP端口
5. 15672:HTTP端口(admin后台)

常用的操作指令
```bash
docker-compose exec rabbitmq rabbitmqctl stop_app # 停止节点服务
docker-compose exec rabbitmq rabbitmqctl cluster_status # 查看集群状态信息
docker-compose exec rabbitmq rabbitmqctl join_cluster rabbit@$cluser_name (需先停止服务)
docker-compose exec rabbitmq rabbitmqctl start_app #启动节点服务	
docker-compose exec rabbitmq rabbitmqctl reset (需先停止服务) #节点脱离集群
docker-compose exec rabbitmq rabbitmqctl change_cluster_node_type disk/ram (需先停止服务) #变更节点类型
docker-compose exec rabbitmq rabbitmqctl forget_cluster_node rabbit@$cluser_name #集群删除节点
```

消息延迟插件安装`rabbitmq_delayed_message_exchange`
1. 下载插件： https://dl.bintray.com/rabbitmq/community-plugins/3.6.x/rabbitmq_delayed_message_exchange/rabbitmq_delayed_message_exchange-20171215-3.6.x.zip
2. 安装
```bash
unzip rabbitmq_delayed_message_exchange-20171215-3.6.x.zip
docker cp rabbitmq_delayed_message_exchange-20171215-3.6.x.ez $container_id:/usr/lib/rabbitmq/lib/rabbitmq_server-3.6.6/plugins/
docker exec -it  $container_id  rabbitmq-plugins  enable rabbitmq_delayed_message_exchange
docker exec -it  $container_id  rabbitmq-plugins list
```
3. 重启容器后插件不会自动开启插件
```bash
docker exec -it  $container_id  rabbitmq-plugins  enable rabbitmq_delayed_message_exchange
```
4. 重新部署(删除原有的容器)或新节点
使用`docker-compose up`启动后,重复第2步骤
