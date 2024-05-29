# 使用 Alpine Linux 作为基础镜像
FROM alpine:latest

# 设置环境变量
ENV APP_DIR /app

# 创建工作目录
WORKDIR $APP_DIR

# 复制应用程序文件到镜像中
COPY hello_world.sh $APP_DIR/

# 定义启动命令。tail -f /dev/null是为了让容器不退出。
CMD ["sh", "-c", "sh hello_world.sh && tail -f /dev/null"]
