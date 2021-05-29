(*学生ひとり分のデータ(名前,点数、成績)を表す型 *)
type gakusei_t = {
  name: string;
  score: int;
  rank: string;
}

(* gakusei_t list は
  - [] 空のリスト
  - first ;; rest　最初の要素がfirstで残りの値のリストがrest

  とい形
 *)

(* gakusei_t list型のデータ型 *)
let lst1 = []
let lst2 = [
  {name = "asai"; score = 70; rank= "B"}
]

let lst3 = [
  {name = "asai"; score = 70; rank= "B"};
  {name = "kaneko"; score = 85; rank= "A"};
]
let lst4 = [
  {name = "asai"; score = 70; rank= "A"};
  {name = "kaneko"; score = 85; rank= "B"};
  {name = "yoshida"; score = 80; rank= "A"};
]

(*目的：　学生リスト lstのうち成績がAの人を返す*)
let rec count_A lst = match lst with
  [] -> 0
  (* first :: restと書く代わりにfirstのところにレコードのパターンを埋め込んでいる *)
  | {name = n; score = s; rank = r} :: rest
  -> if r = "A" then 1 + count_A rest else count_A rest

(*テスト*)
let test1 = count_A lst1 = 0
let test2 = count_A lst2 = 0
let test3 = count_A lst3 = 1
let test4 = count_A lst4 = 2

