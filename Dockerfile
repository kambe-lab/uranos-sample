# Ubuntuベースイメージを使用
FROM ubuntu:20.04

# インストールとアップデート
RUN apt-get update && apt-get install -y tzdata
RUN apt-get install -y curl
RUN apt-get install -y software-properties-common&& \
    rm -rf /var/lib/apt/lists/*

#タイムゾーンの設定
ENV TZ=Asia/Tokyo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN add-apt-repository ppa:deadsnakes/ppa && \
apt-get update  && \
apt-get install -y python3.11 && \
apt-get clean

# Python と pip のエイリアス設定
RUN echo 'alias python="/usr/bin/python3.11"' >> /root/.bashrc
RUN echo 'alias pip="/usr/bin/python3.11 -m pip"' >> /root/.bashrc

# 作業ディレクトリの設定
WORKDIR /work

# ファイルのコピー
COPY ./ /work

# pip のインストール
RUN curl -sS https://bootstrap.pypa.io/get-pip.py | python3.11
RUN cd src && pip install . --root-user-action=ignore

# コンテナ起動時のデフォルトコマンド
CMD ["/bin/bash"]