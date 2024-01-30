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
## 3. appに移動して下さい
cd app

## 4. password_manager.shを実行して下さい
```rb
bash password_manager.sh
```
## 5. gpgのパスワードはpassとなります(実行の初回の取得時に必要)
