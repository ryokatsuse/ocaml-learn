
(*目的: 先頭からリスト中の各点までの距離の合計を計算する*)

let rec total_distance lst =  let rec hojo lst total0 = match lst with
[] -> []
| {kyori = k; total = t} :: rest ->
  {kyori = k; total = total0 +. k}
  :: hojo rest (total0 +. k) in hojo lst 0.0

(*リストの順番を逆順にして返す*)

let rec reverse lst =
  (*目的: lstの逆順のリスト @resultを返す*)
  let rec rev lst result = match lst with
    [] -> result
    | first :: rest -> rev rest (first :: result)
in rev []