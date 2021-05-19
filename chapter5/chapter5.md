## 条件分岐

- 条件分岐は以下のような書き方になる
  
```
if 条件 then 式 else 式
```

以下の制約がある
- 条件はboolean型でなければならない
- 2つの式の値は同じ型を持つ必要がある

### 問題5.1

```
if 2 < 1 then 3 else 4 // booleam
if "true" then 3.14 else 2.72 // error 文字列と数値を比較しているため型が一致していない
if "a" = "b" then false else true // boolean
if true < false then 1 else "2" // error 式の中でstringを判定しているので
if not (3 = 4) then 1 < 2 else 1 > 2 // bolean

```

### 条件分岐に対するデザインレシピ

- まずは場合分けをすべて書き出すそしてテストプログラムも作成しておく
- 場合分けの条件を特定する
- 条件分岐の大枠が完成したら中身を順番に記述していく

