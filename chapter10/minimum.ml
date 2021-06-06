(* 目的：受け取ったlstの中の最小値を返す *)

let rec minimum lst = match lst with
(* max_initは最大の整数値*)
  [] -> max_int
  | first :: rest ->
    let min_rest = minimum rest in
    if first <= min_rest
      then first
  else min_rest

(*テスト*)
let test1 = minimum [3] = 3
let test2 = minimum [1; 2] = 1
let test3 = minimum [3; 2; 1] = 1
let test4 = minimum [4; 7; 3; 8; 1; 5] = 1


