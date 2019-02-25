## 创建用户
```bash
docker exec -it mongodb-server mongo admin
> db.createUser({user:"root",pwd:"password",roles:[{role:"root",db:"admin"}]});
Successfully added user: {
	"user" : "root",
	"roles" : [
		{
			"role" : "root",
			"db" : "admin"
		}
	]
}


> exit


```
