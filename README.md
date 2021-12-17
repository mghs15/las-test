# las-test

LAStoolsを用いて、txtからlasを作って表示するテスト。

## データフロー

* `mergeTxt.pl`で`txt`フォルダにあるtxtファイルをマージして`merge/merge.txt`へまとめる。
* LAStoolsの`txt2las`でマージしたtxtファイルをlasへ変換する。
* LAStoolsの`lasview`でlasファイルを表示する。

## メモ

* LAStoolsのライセンス(2021/12/17時点)
	* `txt2las` : "free" open-source LGPL
	* `lasview` : also "free" to use but not (yet) available in open source
* `txt2las.exe`、`lasview.exe`は`view3dFromTxt.bat`と同じ階層に置く。
* `txt2las`の引数メモ
	* `-parse sxyz` : １列目をスキップ（`s`）する。2,3,4列目がxyzに相当。
	* `-drop_z_below 0.5` : zが0.5以下をフィルタして落とす。
	* おそらく、点の間引きも行われていると思われる。
	* EPSG指定は`-epsg 6676`みたいな感じ？不明。
* [兵庫県のDSM](https://www.geospatial.jp/ckan/dataset/2010-2018-hyogo-geo-dsm)で試したら、それっぽい動きをした。

## 参考文献

* LAStools https://rapidlasso.com/lastools/

