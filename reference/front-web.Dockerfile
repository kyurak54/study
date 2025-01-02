FROM nginx:1.24
RUN mkdir -p ./etc/nginx
RUN mkdir -p ./usr/resources
RUN pwd > /here
RUN apt-get update && apt-get install -y vim net-tools tzdata
RUN ln -snf /usr/share/zondinfo/Asia/Seoul /etc/localtime
COPY ./nginx.conf ./etc/nginx/nginx.conf
COPY ./src/main/resources/static ./usr/resoucres/static
