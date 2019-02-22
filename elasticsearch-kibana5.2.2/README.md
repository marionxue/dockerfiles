* 配置了分词器 analysis-pinyin 和 ik
* 配置了reindex需要的白名单

```
cd /root
git clone $repourl
cd /root/docker-compose/migrate-es/
docker-compose ps
# 注意修改你实际的IP等信息
docker-compose up --build -d
docker-compose logs -f elasticsearch
```
