(*鶴の足の数*)
let turufootLength = 2

(*鶴の足の数*)
let kamefootLength = 4
(* 目的 鶴と亀の数を与えたら足の合計を返す関数 *)
(* sumTuruFootLength : int -> int *)
let sumTuruKameFootLength x y = x * turufootLength + y * kamefootLength

let test = sumTuruKameFootLength 10 20 = 100
let test2 = sumTuruKameFootLength 33 12 = 114
let test3 = sumTuruKameFootLength 73 45 = 326