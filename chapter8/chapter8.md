## レコード

- 組は単一の値をコンマで区切っただけなので順番を覚えておかなくてはいけない
- 各データに名前をつけることができる
- JavaScriptでいうと組は配列、レコードはオブジェクトにちかいもの

レコードの構文
※最初にtypeを宣言する必要がある。

```
type study = {
  name : string;
  score : int;
  rank : string;
};;


# { name = "asai"; score = 70; rank = "B" } ;;
```

- レコードも組同様に、パターンマッチができる

studyに入っているデータを照合して表示させるパターンマッチ関数

```
let notify study = match study with
  { name = n; score = s;; rank =  r} ->
  n ^ "さんは" ^ string_of_int s ^ "点で成績は、" ^
  s ^ "です。" ;;
```

- レコードのパターン変数は同じでもOK

レコードのフィールドの値を取り出す方法はmatch以外にもドット記法を使うことで対応可能

### 問題8.1

```
type books = {
  title: string;
  authorName: string;
  publisher: string;
  price: int;
  isbn: int;
}

{title = "プログラミングの基礎"; authorName = "浅井健一" ; publisher = "サイエンス社"; price =  2300; isbn = 9784781911601};;

```

### データ構造に対するデザインレシピ

- 入出力のデータの型を考える
- 型が決まったらそれらを取り出すmatch文を作る