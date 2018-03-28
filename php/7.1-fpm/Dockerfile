FROM php:7.1-fpm

# 工作目录
VOLUME ["/var/www"]

# 复制扩展
COPY ext.sh /home/

# 安装扩展
RUN sh /home/ext.sh

# 进入工作目录
WORKDIR /var/www