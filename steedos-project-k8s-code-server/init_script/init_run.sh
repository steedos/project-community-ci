# 配置文件位置
# npm config set registry http://registry.npm.taobao.org/
# npm config set prefix "/home/coder/.npm/npm_global"
# npm config set cache "/home/coder/.npm/npm_cache"
# yarn config set registry http://registry.npm.taobao.org/
# yarn config set global-folder  "/home/coder/.yarn/yarn_global"
# yarn config set prefix         "/home/coder/.yarn/yarn_prefix"
# yarn config set cache-folder   "/home/coder/.yarn/yarn_cache"

mkdir -p ~/.config/code-server

# 设置 code-server 密码
cat>~/.config/code-server/config.yaml<<EOF
bind-addr: 0.0.0.0:8080
auth: password
cert: false

EOF

# 追加输入密码
echo "password: $ENV_CODE_SERVER_PASSWORD" >> ~/.config/code-server/config.yaml