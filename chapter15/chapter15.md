## 新しいカタチの再帰

### 再帰関数の構造

- 構造に従った再帰は主に、リスト構造の上にできあがっている。

```
(*目的：受け取ったリストlstの各要素の和を求める *)
let rec sum lst = match lst with
      [] -> 0
      | first :: rest -> first + sum rest

```
上記の関数の特徴として次のような形になっている
- 自明に答えがでる or そうでないケースに場合わけをしている
  - 自明に答えが出るとは、再帰呼び出しをせずに手元にある情報のみから答えが計算できる（空のリスト）
  - そうでないケースは再帰呼び出しを行っている場合（rest）再帰呼び出しの結果とfirstを加えている部分

### 部分問題の生成
- クイックソートを使って昇順に整列するときの場合以下のような分割統治法を使ってリストを整列する

- 問題を部分問題に分割する
  - 与えられたリストから一つの要素をとってくる
  - 基準の要素としてリストを分割する（今回の場合は、基準より小さいか大きいか）
- 各部分問題を独立に解く
  - それぞれ整列する
- 得られた解から全体の解答を計算する

### 停止性の判定
- プログラムが停止するかどうかは決定不能でそれを判定するアルゴリズムは存在しない
- 以下のような方法で停止性を確認できる

```
- 再帰呼び出しを行う際に部分問題が何らかの意味でもとの問題よりも簡単になっていること
- 繰り返すと有限回で自明なケースに帰着されること

```

- クイックソートの例でリストの長さが1以上の場合、基準の要素firstを取り除いたrestを分割することで部分問題を得ている
  - 分割する = 元の問題より簡単になっていることがわかる
- 有限の数繰り返すと必ず自明なケースに帰着できる
  - クイックソートの場合再帰するたびにリストの長さは1つ減って最終的にはリストの長さ分繰り返せば必ず自明なケースに辿り着く。
  - 実数のように無限の可能性がある場合、例えば0のような値で再帰すると無限に再帰する可能性がある

### 一般の再帰に対するデザインレシピ

#### テンプレート
一般の再帰を使う場合は自明に答えが出るケースとそれ以外のケースに分ける

### 本体
- 自明に答えが出るケースはどのような場合か
- その場合の答えは何か
- 部分問題はどのようにしたら作れるか
- 部分問題の結果から全体の結果を得るにはどうすればいか
