
FROM demoimages:latest
 
ADD sources.list /etc/apt/
 
RUN apt-get update  && apt-get install -y nginx
 
RUN mkdir /app
 
WORKDIR /app
 
COPY . /app/
 
ENV PORT 80
#RUN npm install --registry=http://172.16.1.204:38081/repository/npm-group/
RUN npm install --registry=https://registry.npm.taobao.org
 
RUN npm run build \
    && cp -r dist/dist/* /var/www/html \
    && rm -rf /app
 
RUN echo "Asia/shanghai" > /etc/timezone
 
