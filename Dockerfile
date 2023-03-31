FROM redis:7
ENV REDIS_PASSWORD 123456
ENV DB_FILENAME dump.rdb
COPY /redis.conf /usr/local/etc/redis/redis.conf
CMD ["sh", "-c", "exec redis-server /usr/local/etc/redis/redis.conf  --requirepass \"$REDIS_PASSWORD\" --dbfilename \"$DB_FILENAME\""]