FROM node:latest
# 安装 docsify
RUN npm i docsify-cli -g
# 新建工作目录
ENV WORKDIR /data/docs
WORKDIR $WORKDIR
EXPOSE 3000
