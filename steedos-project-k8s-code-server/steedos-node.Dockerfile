FROM steedos/steedos-project-template:2.1.14
USER root
WORKDIR /

# 设置共同源
# hub.docker.com 构件时使用 taobao 可能减慢构件速度
RUN npm config set registry http://registry.npm.taobao.org/
RUN yarn config set registry http://registry.npm.taobao.org/
RUN npm config set prefix "/root/.npm/npm_global"
RUN npm config set cache "/root/.npm/npm_cache"
RUN yarn config set global-folder  "/root/.yarn/yarn_global"
RUN yarn config set prefix         "/root/.yarn/yarn_prefix"
RUN yarn config set cache-folder   "/root/.yarn/yarn_cache"

# 安装 code-server
RUN yarn global add code-server@3.10.2

# 把所需文件都拷贝入 /root/
# ADD home_file /root/
# RUN cd ~/ && ls -la >abc
# RUN cd ~/ && cat abc
# 安装包
# RUN cd /root/app_code && yarn

# 安装 steedos-cli@next
RUN yarn global add steedos-cli@next

# 加入init脚本
RUN mkdir /app_archived
ADD init_script /app_archived/init_script/

# CMD ["/bin/sh","-c","sleep 999999"]
