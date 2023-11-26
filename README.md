# robosys2023

# plusコマンド
[![test](https://github.com/Kaede287/robosys2023/actions/workflows/test.yml/badge.svg)](https://github.com/Kaede287/robosys2023/actions/workflows/test.yml)

1から任意の数nまでの数字をすべて足す. 足した数字を三桁区切りで出力する.

## 必要なソフトウェア
* python
	* テスト済み:3.7~3.10

## 使い方 
```
$ seq 100 | ./plus
5,050

$ ./plus < nums
6,000
```

## インストール方法
* Githubやpythonが導入された環境で, 下記のコマンドを入力する.
```
$ git clone  https://github.com/Kaede287/robosys2023.git
```

* robosys2023ディレクトリを開く.
```
$ cd robosys2023
```

* 実行方法に関しては、上記の使い方を参照してください.実行権限が付与されていない場合は, 下記コマンドを入力してください.
```
$ chmod +x plus
```

## テスト環境 
* Ubuntu20.04

## ライセンス ##
* このソフトウェアパッケージは, 3条項BSDライセンスの下, 再頒布および使用が許可されます.
* このパッケージのコードは, 下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）の一部を本人の許可を得て自身の著作としたものです. 
	* [ryuichiueda/my_slides robosys_2022](https://github.com/ryuichiueda/my_slides/tree/master/robosys_2022)

©2023 Kaede Ichikawa
