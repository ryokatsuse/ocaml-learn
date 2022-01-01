(*目的: 受け取ったリストlstから正の要素のみを取り出す*)
(*filter_positive : int list -> int list *)

let rec filter_positive lst = match lst with
    [] -> []
    | first :: rest ->
        if first > 0 then first :: filter_positive rest
        else filter_positive rest

(* 目的: 整数nが3で割ると1余るかを調べる*)

let is_mod3_1 n = n mod 3 = 1

(*目的: リストlstから3で割ると1余る要素のみを取り出す *)
(* filter_mod3_1 : int list -> int list *)

let rec filter_mod3_1 lst = match lst with
    [] -> []
    | first :: rest ->
      if is_mod3_1 first then first :: filter_mod3_1 rest
      else filter_mod3_1 rest

(* 上記のfilter_positiveとfilter_mod3_1を共通化したfilter関数 *)
(*目的: リストlstの中から条件pを満たすy要素のみを取り出す *)

let rec filter p lst = match lst with
      [] -> []
      | first :: rest -> if p first then first :: filter p rest
      else filter p rest

(*目的: initから初めてlstの要素を右から順にfを施し込む*)
(* fold_right : (`a -> `b -> `b) -> `a list -> `b -> `b *)
let rec fold_right f lst init = match lst with
      [] -> init
      | first :: rest -> f first (fold_right f rest init)

(*目的: first とrest_resultを加える*)
(*add_int : int -> int -> int *)
let add_int first rest_result = first + rest_result

(*目的: 受け取ったリストlstの各要素の和を求める*)
(*sum : int list -> int*)
let sum lst = fold_right add_int lst 0

(*目的: firstは無視してrest_resultに1を加える*)
let add_one first rest_result = 1 + rest_result

(*目的: 受け取ったリストlstの長さを求める*)
let length lst = fold_right add_one lst 0

(*目的：firstをリストrest_resultの先頭に加える *)
let cons first rest_result = first :: rest_result

(*目的:lst1とlest2を受け取りそれらを統合したリストを返す *)
let append lst1 lst2 = fold_right cons lst1 lst2




(*目的: 受け取ったリストlstの各要素の和を求める　リファクタリング*)
(*sum : int list -> int*)
let sum lst = fold_right (+) lst 0