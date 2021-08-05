# 初始化 code-server 环境
# 1. 判断 ~/.config/code-server/config.yaml  存在与否
# 不存在则表示初次

# -f 参数判断 $file 是否存在
mnted_home_path="/pv_home_path_mnted"
init_flag_file="$mnted_home_path/.config/code-server/.init_flag_file"
echo "check start"
if [ ! -f "$init_flag_file" ]; then
    # 解压缩
    # cd /
    # echo "tar unzip copys"
    # tar -xzvf /app_archived/home_files.tar.gz
    # echo "tar is unziped"

    # 淘宝源设置和前缀已经设置在 ~/.npmrc
    # cp file
    # 加个.   把隐藏文件夹一起复制过去
    echo "copy start"
    cp -rf /root/. $mnted_home_path
    echo "copy end"

    mkdir -p /pv_home_path_mnted/.config/code-server
    mkdir -p ~/.config/code-server
    # 声明...
    echo "DON'T DELETE THIS FILE  | 警告： steedos sass 云用户不要删除此文件" > $init_flag_file
else
    echo "skip copy ...."
fi
echo "run end"