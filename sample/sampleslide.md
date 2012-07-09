MySQLチューニングのセオリー
===========================

自己紹介
--------
* yuokada
* [@uokada](https://twitter.com/#!/uokada)
* 2009入社

概要
----
1. MySQLのチューニング
1. Linuxカーネルのチューニング
1. ハードウェア選定
1. 測定
1. まとめ
1. あとがき

環境
----
* MySQL5.1
* CentOS5.6
* Kernel 2.6.18(あんまり気にしてないので不明)

MySQLのチューニング
-------------------
* innodb周りのチューニングについて話します。

Linuxのチューニング
-------------------
* 一般的なチューニングの話

ハードウェア選定
----------------
* なぜここまでパフォーマンスが出ないのか??
  * 真剣に考えた結果見えたのはハードウェアが悪いってことでした。

RANGEパーティションについて
---------------------------
- RANGEパーティションが使える要件
    - INSERT主体のテーブル
	- SELECTも最新のデータへの参照しかしない
	@ref: [ソーシャルゲームのためのデータベース設計](http://www.slideshare.net/matsunobu/ss-6584540)
	- ex. ログテーブル
- 巨大テーブルでインメモリでINSERTを完結させるための手法

MySQLを使いこなすには
---------------------
- 設計
    - 効率のいいデータ型の利用 
	- PKにVARCHARで100文字異常使うとか論外
	- 複合カラムのPKもあまりオススメしない
	- PKが無いときはサロゲートキーを使いましょう

IOPS
----
DISK            | iops
--------------- | ------
7200rpm SATA    | 100
15000rpm SAS    | 200
SSD(Intel x-25) | ~ 8600

::

    hd <- c('SATA', 'SAS', 'SSD')
	iops <- c(100, 200, 6600)
	iops.names <- hd
	barplot(iops, names.arg=iops.names, col=c("blue", "green", "red", "yellow", "cyan"), ylim=c(0,500), xlab='IOPS compare')




_[IOPS - Wikipedia, the free encyclopedia](http://en.wikipedia.org/wiki/IOPS)_

	  

まとめ
------
* ハードウェアで解決できる問題はハードウェアを買って解決しましょう。
  * チューニングは最後の付け足しです。
  * ハードウェア選定を間違えた持点で積んでます。
* アプリケーションのボトルネックの9割型はストレージです。
* 正しい使い方をしてください。
* MySQLはRDBMSです。 データを入れるための箱ではありません。



Link
----
- [ソーシャルゲームのためのデータベース設計](http://www.slideshare.net/matsunobu/ss-6584540)


あとがき
-------
* 2年連続で同じ事やってます。
  * そろそろ、飽きましたね(´Д｀)
  * チューニング不要でまともに動くDBが使いたいです。
  * ex. dynamo [Apache CassandraとAmazon DynamoDBの比較 ｜ Classmethod.dev()](http://dev.classmethod.jp/cloud/apache-cassandra-and-amazon-dynamodb-compare/ "Apache CassandraとAmazon DynamoDBの比較 ｜ Classmethod.dev()")
* DBサーバーにおいてチューニングは大事な作業です。
  * ただし、ハードウェアの性能を使い切れてない場合に限る!!
  * IOPSを100％使い切っている環境でチューニングしても多少改善する程度で
*ほとんど意味が無い*

