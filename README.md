アプリケーション名
-
Ride Mate

アプリケーションの概要
-
自分がどのスノーボードを持っているかまた手入れとか点検を忘れるのでその日の点検や手入れの通知をしてくれるアプリケーションです

URL
-
https://ridemate-rails7-user-id.onrender.com


テスト用アカウント
-
・Basic認証ID：ridemate

・Basic認証パスワード：1126

・メールアドレス：aaa@aaa

・パスワード：a111111

利用方法
-
目標投稿
-
1.認証画面からユーザー新規登録を行う

2.トップページからボード登録で（モデル・メーカー名・スタイル・状態など）を入力し登録する

3.ボード一覧に表示される

アプリケーションの作成した背景
-
人生初めてマイボードを買って自分が何を買ったのかわからなくなって、もし次買うとき前何を買ったのかを確認でき、また手入れの日や点検は冬なのでいつ点検なのか忘れたりするので通知機能をつけどこでもわかるようなアプリケーションを開発することにしました。

洗い出した要件
-
https://docs.google.com/spreadsheets/d/1SOMPSSY6E1HOqabVErUsdvO4H6iJH3i8IKngM4-H9Xc/edit?usp=drive_link

実装した機能についての画像やGIFおよびその説明
-
ログイン・新規登録画面
[![Image from Gyazo](https://i.gyazo.com/37ae34d7e0853a661486df8767b5cd41.png)](https://gyazo.com/37ae34d7e0853a661486df8767b5cd41)

新規登録画面
[![Image from Gyazo](https://i.gyazo.com/3d8dca81745f18c6660cf499dd9c39e1.png)](https://gyazo.com/3d8dca81745f18c6660cf499dd9c39e1)

ログイン画面
[![Image from Gyazo](https://i.gyazo.com/ba0ca19756277c12d5d1f833c9ad4443.png)](https://gyazo.com/ba0ca19756277c12d5d1f833c9ad4443)

一覧画面
[![Image from Gyazo](https://i.gyazo.com/57c365c5fe5628db9ab09cb6d6779ba8.png)](https://gyazo.com/57c365c5fe5628db9ab09cb6d6779ba8)

ボード登録画面
[![Image from Gyazo](https://i.gyazo.com/d401fd2814de90ad3506820593b2b74c.png)](https://gyazo.com/d401fd2814de90ad3506820593b2b74c)

実装予定の機能
-
現在通知機能・メンテナンス機能を実装中

ビンディング管理機能

データベース設計
-
[![Image from Gyazo](https://i.gyazo.com/9d7f60515b442f8b458c93a61a15ce42.png)](https://gyazo.com/9d7f60515b442f8b458c93a61a15ce42)

画面遷移図
-
[![Image from Gyazo](https://i.gyazo.com/cb68c1223c3341a1be9f5e8460940bbf.png)](https://gyazo.com/cb68c1223c3341a1be9f5e8460940bbf)

開発環境
-
フロントエンド

バックエンド

インフラ

MySQL

ローカルでの動作方法
-
% git clone https://github.com/r-ichinose

% cd ridemate

% bundle install

% rails db:create

% rails db:migrate


工夫ポイント
-
工夫として誰でも使えるように見やすくまたシンプルで複雑さが無いようにしてどんな年齢でも使えるシンプル管理アプリケーションです