# How to Use
```bash
server : nodejs
db     : <none>
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
truffle-configを編集
```bash
  networks: {
    ganache: {
      host: "ganache",
      port: 8545,
      network_id: "*",
    },
```