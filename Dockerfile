# 纯静态网站模板（直接复制）
FROM nginx:alpine

# 删除默认欢迎页
RUN rm -rf /usr/share/nginx/html/*

# 复制所有网站文件到 Nginx 目录
COPY . /usr/share/nginx/html

# 暴露 80 端口
EXPOSE 80

# 启动 Nginx
CMD ["nginx", "-g", "daemon off;"]
