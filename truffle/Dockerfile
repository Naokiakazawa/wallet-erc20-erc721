FROM node:8.15.0
LABEL maintainer='Naoki Akazawa'
ENV TZ=Asia/Tokyo
SHELL ["/bin/bash", "-c"]
RUN npm install -g --unsafe-perm truffle@5.0.1 @truffle/hdwallet-provider@1.0.26
WORKDIR /usr/app
RUN npm install @openzeppelin/contracts@2.4.0
WORKDIR /usr/app/src
EXPOSE 3000 8545
RUN rm /root/.bashrc
COPY .bashrc /root/.bashrc
COPY truffle_entrypoint.sh /
RUN chmod 777 /truffle_entrypoint.sh
ENTRYPOINT [ "/bin/bash", "/truffle_entrypoint.sh" ]