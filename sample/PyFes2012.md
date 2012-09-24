PyFes LT
=========

全文検索
-------

- @johtani
- http://johtani,jugem.jp
- Solr 本
- JAvaメインでPythonそんなに知らないです
- tanngosyuu 
  - 全文検索
  - analysis 分解する処理 形態素解析、N-GRAM
  - text
  - term 
  - document １件分のデータ
  - field転置インデックスが作成される最小単位
- 転置インデックスの検索
- elasticsearchとは
  - 分散型でRESTfulな検索エンジン
  - Luceneをベースに構築
  - スキーマフリー & ドキュメント指向
  - マルチテナント？
  - JSONで設定、インデックス、検索が可能
  - 検索機能は ファセット、絞り込み検索、ハイライト、geo検索etc
  

社畜me - ウェブクローラーの話
--------------------------
- ところてん
- Goo検索の中の人でした
- アミューズメントが会社

- Dropboxのpublicフォルダに対してクローラを書いてみた
- AVGはいいこ。


Sphinx の翻訳の話
----------------
- Jinja2翻訳とかしてる人


Cocos2d
-------
- japan evangelist
- @Seasons
- @cocos2dfan_jp 管理人
- 専用ストア Cydia
	- jailbreak 専用のストア
- What's newIniiPhoneOS.pdf
	- 歴代OSの機能追加について記載されている
	- AVAsset クラスが相当
	
	
HBase
-----
- Hbaseのデータ構造
	- KV形式
	- 行キー、列ファミリ、列、タイムスタンプ、値で並んでいる
	
- リージョン分割
	- Hbaseは自動で分割する
	- 分割は高コストなので管理が大変になる
	- 特にデータ投入前の事前分割は強く推奨
- スキーマ設計
  	- 行ファミリは３つぐらいに限定
  	- 行キー設計
  		- ランダムアクセスかシーケンシャルかで別れる
  		
  		
 Git
 ---
 - まえだこうへい
 - 渋谷の会社