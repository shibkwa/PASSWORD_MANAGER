FROM ubuntu:22.04

# unminimizeコマンドを実行して標準ツールをインストール
RUN yes | unminimize

# 必要なパッケージをインストール
RUN apt update && apt install -y man less vim file locales gnupg

# 日本語ロケールを生成し、デフォルトとして設定
RUN locale-gen ja_JP.UTF-8
ENV LANG ja_JP.UTF-8
ENV LC_ALL ja_JP.UTF-8
