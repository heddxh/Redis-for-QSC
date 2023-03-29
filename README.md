# Redis 模板

### 导入本地镜像

```bash
docker load -i redis-test
```

### 启动 docker compose

- 修改`docker-compose.yml`中的密码（环境变量）

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
