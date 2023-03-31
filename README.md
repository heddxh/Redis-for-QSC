# Redis 模板

### 一些说明

容器启动时会将放置在根目录的`redis.conf`文件复制到容器内构建容器。因此修改配置文件后需要重启容器以生效。

### 启动 docker compose

- 修改持久化数据库文件名以及连接密码
```yml
environment:
  - REDIS_PASSWORD=<yourpassword>
  - DB_FILENAME=<yourdbfilename>
```

- 修改持久化数据存放目录
```yml
volumes:
  - path/to/db/dic/:/data/
```

- 将其他服务加入 docker 网络
```yml
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
