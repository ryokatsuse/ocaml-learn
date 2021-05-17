(*鶴の足の数*)
let footLength = 2
(* 目的 鶴の数を与えたら鶴の足の合計を返す関数 *)
(* sumTuruFootLength : int -> int *)
let sumTuruFootLength x = x * footLength

let test = sumTuruFootLength 10 = 20
let test2 = sumTuruFootLength 33 = 66
let test3 = sumTuruFootLength 73 = 146