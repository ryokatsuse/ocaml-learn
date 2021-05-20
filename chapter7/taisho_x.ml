(*目的: x座標とy座標の組で表された平明座標を受け取ったらx軸について対称な座標を返す関数*)

let taisho_x pair = match pair with
  (x, y) -> y - x

let test1 taisho_x (0, 0) = 0
let test2 taisho_x (10, 5) = -5
