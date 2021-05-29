(* int listは
  - [] 空リストあるいは
  - first :: rest 最初の要素がfirstで残りのリストがrest
  という形 *)

(* 目的: 受け取ったリストletに0がふくまれているかどうかを調べる *)
let rec contain_zero lst = match lst with
  [] -> false
  | first :: rest -> if first = 0 then true
  else contain_zero rest

let test1 contain_zero [] = false
let test2 contain_zero [0; 2] = true
let test3 contain_zero [1; 2] = false
let test4 contain_zero [1; 2; 3;4; 0; 5; 6; 7] = true
let test5 contain_zero [1; 2; 3;4; 5; 6; 7; 8] = false

