# # 安装依赖
apt-get update -y 
# apt-get install -y libssl-dev
apt-get install -y libpng-dev
apt-get install -y postgresql-server-dev-11
# 删除多余文件
rm -rf /var/lib/apt/lists/*

# # 安装扩展
# docker-php-ext-install gd  pdo_mysql pdo_pgsql mysqli
# pecl install /home/redis-3.1.2.tgz
# pecl install /home/mongodb-1.2.8.tgz
# pecl install /home/yaf-3.0.4.tgz

# # crypt_module
# cd /home/crypt_module/ && phpize && ./configure && make && make install
# # rpc
# cd /home/xm_rpc/ && phpize && ./configure && make && make install


# 替换php配置文件
ln -s /var/www/docker_compose/docker_conf/php/php.ini /usr/local/etc/php/
# 扩展so文件
rm -rf /usr/local/lib/php/extensions/no-debug-non-zts-20160303
ln -s /var/www/docker_compose/docker_conf/php/no-debug-non-zts-20160303 /usr/local/lib/php/extensions/
# 扩展配置
rm -rf /usr/local/etc/php/conf.d
ln -s /var/www/docker_compose/docker_conf/php/conf.d /usr/local/etc/php/

# 删除home下文件
rm -rf /home/*