# PASSWORD_MANAGER
IDとパスワードを安全に管理するためのツール

## 前提 Dockerをインストールしていること
[Dockerの入手方法](https://matsuand.github.io/docs.docker.jp.onthefly/get-docker/)

## 1. dockerを立ち上げて下さい
```rb
docker compose up -d
```
## 2. コンテナの内部に入って下さい
```rb
docker compose exec app bash
```
## 3. password_manager.shを実行して下さい
```rb
bash ./password_manager.sh
```
