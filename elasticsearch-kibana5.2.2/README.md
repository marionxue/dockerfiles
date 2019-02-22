* 配置了分词器 analysis-pinyin 和 ik, 如果你使用了远程的字典或者本地的词典文件,请更新词典文件
* 配置了reindex需要的白名单,所以你需要修改elasticsearch.yml中白名单的ip以及端口

```
cd /root
git clone $repourl
cd /root/docker-compose/migrate-es/
docker-compose ps
# 注意修改你实际的IP等信息
docker-compose up --build -d
docker-compose logs -f elasticsearch
```
