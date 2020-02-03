# How to Use
```bash
server : nodejs
db     : mongodb
chain  : ganache
```

## 準備
ネットワークがなければ、以下。
```bash
docker network create --subnet=172.28.0.0/16 dapp_dev_01
```

## コンテナの立ち上げ
コンテナ群立ち上げ。
```bash
docker-compose up
```
or
```bash
docker-compose up --build
```

## ganache-cli
コンテナ入って、以下のコマンド
```bash
ganache-cli
```

- ganacheのニーモニック取得し、Dockerfileの**最後の部分**を編集。
- docker-compose.ymlの**image名**を編集

## truffle
truffle-configのnetwork部分を編集
```bash
    ganache: {
      host: "ganache",
      port: 8545,
      network_id: "*",
    },

## go-backend
go-backendでは、fresh利用時は以下を実行
```bash
go get -u github.com/pilu/fresh
fresh
```