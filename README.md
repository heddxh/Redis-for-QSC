# Redis 模板

### 修改配置文件 `redis.conf`

- 修改持久化数据库文件名以及连接密码
```conf
dbfilename <yourname>
requirepass <password>
```

### 启动 docker compose

- 修改持久化数据存放目录
```yml
volumes:
  - path/to/db/dic/:/data/
```

- 将其他服务加入 docker 网络
```yaml
services:
  app:
    networks:
      - redis-network
```

- 启动： 
```bash
docker compose up -d
```

### 连接

`redis:6379`
