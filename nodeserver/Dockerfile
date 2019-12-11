FROM node:10.17.0
LABEL maintainer='Naoki Akazawa'
ENV TZ=Asia/Tokyo
WORKDIR /usr/app
RUN npm init -y && \
    npm install grpc@1.24.2 express@4.17.1 moment@2.24.0 body-parser@1.19.0
WORKDIR /usr/app/src
EXPOSE 3000
RUN rm /root/.bashrc
COPY .bashrc /root/.bashrc