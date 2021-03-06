(* 時給 *)
let jikyuu = 950

(*優遇時給*)
let yugu_jikyu = 980

(* 基本給 *)
let kihonkyu = 100

(* 目的:働いた時間xに応じたアルバイト代を計算する *)
(* kyuyo : int -> int *)
let kyuyo x = kihonkyu + x * (if x < 30 then jikyuu else yugu_jikyu)

(* テスト *)
let test1 = kyuyo 25 = 23850
let test2 = kyuyo 28 = 26700
let test3 = kyuyo 31 = 30480