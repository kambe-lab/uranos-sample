# Uranos_sample

###### Ouranos GEX

本リポジトリでは、Ouranos Ecosystem (ウラノス・エコシステム) 4次元時空間情報基盤のサンプルコードと実装例を示します。今後flaskでAPI用のコードも用意予定なので、ここから空間IDの取り組みを始めていきます。



## 本リポジトリ内プログラムの実行方法

①docker imageを作成する

```
docker build ./ -t ouranos-id-sample
```

②docker runでコンテナを実行する

```
docker container run -it ouranos-id-sample
```

③imageの中に入れるので、これでpython 3.11実行環境で実行できます。

④内部に入った後はpythonコマンドで通常時実行するときと同様に実行して下さい。



## 問題などがある場合

エラーや問題点がある場合の対応として、以下2つとなります。

①自力で直せる場合

自力で直せる場合は、PRを出してください。レビュー後に、マージします。



②直せない場合

issueを作ってください。

issueはissue templateで記載してください。

