FROM node:10.17.0
LABEL maintainer='Naoki Akazawa'
ENV TZ=Asia/Tokyo
RUN npm install -g --unsafe-perm web3@1.2.4 websocket@1.0.30 create-react-app@3.2.0
WORKDIR /usr/app
EXPOSE 3000 8080
RUN rm /root/.bashrc
COPY .bashrc /root/.bashrc