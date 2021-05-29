(*目的：整数のリストを受け取ったら偶数だけ返すような関数*)

let rec even lst = match lst with
  [] -> []
  | first :: rest -> if first mod 2 = 0 then first :: even rest else even rest

let test0 even [] = []
let test1 even [1; 3; 4] = [4]
let test2 even [1; 2; 5; 6; 7; 8] = [2; 6; 8]
let test1 even [5; 2; 1; 13; 10] = [2; 10]

