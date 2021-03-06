## リスト

- データを好きな数だけ並べることができるもの
- 組を複雑なので構造をしっかり理解することが重要
- リストの中の要素は全て同じ型を持たせなくてはならない
- リストもパターンマッチが使える
  - 組との違いとして空リスト or 長いリストなど複数パターンが考えられるので以下のように書ける

以下は空リストを渡しているので0が返ってくる
```
match [] with
  [] -> 0
  | first :: rest -> first ;;

```

- Ocamlは空リストか否かでパターンマッチすることを知っているので、条件を書き忘れたりすると警告を出す

### 再帰関数
- 同フォルダ内の`coutain_zero.ml`を参照
- この例では、再帰呼び出しをしている
  - 最初に空リストかどうかを調べる
  - 空リストではない場合は、先頭の要素が0かどうかをチェック
  - その後残りのリストの中にリストが入っているかどうかをチェック
- この関数の中で関数を呼んでいる
- 再帰は、呼び出す際に全く同様のリストを渡すと呼び出し先で同じ処理を繰り返すことになるので無限ループになってしまう。
  - `coutain_zero.ml`の場合は`contain_zero first`にしてしまうと無限ループになる
  - restだと呼び出しごとに長さが短くなっていくので最後まで関数を実行することができる

### テンプレートの複合

- 複雑なデータ構造を処理していく場合はmatch文の中で別のmatch文を書く場合もある
  - その時は必ず括弧（）でくくる