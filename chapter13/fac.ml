(*目的: 学生リスト lst のうち成績がAの人の数を返す*)
(* count_A: gakusei_t list -> int *)

let rec count_A lst = match lst with
    [] -> 0
    | {namae = n; tensuu = t: seiseki = s} :: rest
    -> if s = "A" then 1 + count_A rest
    else count_A rest

(* 上記はBとかCとか増えた時に同じような関数が増えてしまうので一箇所にまとめるようにリファクタリングすることが重要 *)

(* 目的：学生リスト 1st のうち成績が seiseki0の人の数を返す *)
(* count: gakusei_t list -> string -> int *)

let rec count lst seiseki0 = match lst with
    [] -> 0
    | {namae = n; tensuu = t: seiseki = s} :: result
    -> if s = seiseki0 then 1 + count rest seiseki0
    else count rest seiseki0

(* 目的: 実数のリスト lstを受け取ったら各要素の平方根のリストを返す *)
(* map_sqrt: float list -> float list *)

let rec  map_sqrt lst = match lst with
    [] -> []
    | first :: rest  -> hyouka first :: map_sqrt rest

(* 目的：学生リスト lst を受け取り成績を入れたリストを返す *)
(*map_hyouka: gakusei_t list -> gakusei_t rlist*)

let rec map_hyouka lst = match lst with
    [] -> []
    | first :: rest -> hyouka first :: map_hyouka rest 

(*上記は呼び出す関数が異なるだけで共通処理は似ている。以下のように変数fに置き換えて引数として受け取る *)

(*目的：関数fとリスト lstを受け取り成績を入れたリストを返す*)
(*map: (`a -> `b) -> `a list -> b` list*)

let rec map f lst match lst with
    [] -> []
    | first :: rest -> f first :: map rest



# let twice7 = f (f 7);;

val twice7 : (int -> int) -> int = <fun>

