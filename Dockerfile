# 使用官方的基础镜像
FROM ubuntu:latest

# 安装必要的依赖
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip

# 复制应用代码到容器中
COPY . /app

# 设置工作目录
WORKDIR /app

# 安装 Python 依赖
RUN pip3 install -r requirements.txt

# 暴露端口
EXPOSE 80

# 启动应用
CMD ["python3", "app.py"]

