# robosys2023

# plusコマンドについて
[![test](https://github.com/Kaede287/robosys2023/actions/workflows/test.yml/badge.svg)](https://github.com/Kaede287/robosys2023/actions/workflows/test.yml)

標準出力から読み込んだ数字を足す.足した数字を三桁区切りで出力する.

## 必要なソフトウェア
* python
* テスト済み:3.7~3.10

## 使い方 
```
$seq 10 | ./plus
55

$ ./plus < nums
6,000
```

## インストール方法
* Githubやpythonが導入された環境で,下記のコマンドを入力する.
```
https://github.com/Kaede287/robosys2023.git
```

## テスト環境 
* Ubuntu20.04

## 著作権
* このソフトウェアパッケージは,3条項BSDライセンスの下,再頒布および使用が許可されます.
* このパッケージのコードは,下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを,本人の許可を得て自身の著作としたものです．
	* [ryuichiueda/my_slides robosys_2022](https://github.com/ryuichiueda/my_slides/tree/master/robosys_2022)
