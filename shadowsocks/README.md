## Docker部署
* 运行服务
```bash
bash run.sh
```
* 停服
```bash
docker ps | grep ssserver35537| awk '{print $1}' | xargs docker rm -f
```


## docker-compose方式运行
```
cd /root
git clone https://github.com/marionxue/Dockerfiles.git
cd /root/Dockerfiles/shadowsocks
docker-compose ps
# 注意修改信息
docker-compose up -d
```
