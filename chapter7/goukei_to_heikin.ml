(* 目的: 5教科の点数を与えたらその合計点と平均を返す関数 *)

let goukei_to_heikin (x, y, w, z, a) = (x + y + w + z + a )

let test1 = goukei_to_heikin (100, 100, 100, 100, 100) = 500