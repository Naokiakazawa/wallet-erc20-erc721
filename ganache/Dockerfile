FROM node:8.15.0
LABEL maintainer='Naoki Akazawa'
ENV TZ=Asia/Tokyo
RUN npm install -g --unsafe-perm ganache-cli@6.7.0
RUN mkdir -p /var/ganache
ENV DOCKER true
ENV DATADIR /var/ganache
WORKDIR /usr/src/app
EXPOSE 8545
RUN rm /root/.bashrc
COPY .bashrc /root/.bashrc
ENV MNEMONIC muscle water notice august ritual junk between leg ask nurse antenna anger
ENV NETWORKID 5777
ENTRYPOINT ["bash", "-c", "ganache-cli --host=0.0.0.0 --db=${DATADIR} --mnemonic=\"${MNEMONIC}\" --networkId=${NETWORKID}"]