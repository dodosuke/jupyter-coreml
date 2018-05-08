# Jupyter Notebook with CoreML on Docker

Swift の CoreML 向けの独自モデルを実装するため、Docker上で Jupyter Notebook を使える様にした物です。
Anaconda を Docker で動かすメリットを感じなかったため（ビルドも遅い）、python 3.6.3-slim に必要なパッケージを追加する形で作ってあります。
Keras や CoreMLTools が使える様になっていますが、追加で必要なパッケージは requirements.txt に追加してご利用ください。

This is a dockerfile/docker-compose yaml for using Jupyter Notebook on Docker.

## Requirement
* Docker for Mac or Windows

## How to Use
1. 必要なパッケージを requirements.txt に追加する。

2. ./notebooks フォルダを作成し、中に *.ipynb ファイルなどを入る。

3. docker-compose でコンテナをビルドする。
```
docker-compose build
```

4. 作ったコンテナを走らせる。
```
docker-compose up
```

5. 表示される URL をブラウザにコピペし、Jupyter Notebook にアクセスする。


## Licence
[MIT Licence](https://github.com/dodosuke/jupyter-coreml/LICENCE)

## Author
[dodosuke @ Github](https://github.com/dodosuke)

[dodosuke0920 @ Twitter](https://twitter.com/dodosuke0920)