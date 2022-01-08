(*八百屋においてある野菜と値段のリスト *)

let yaoya_list = [("トマト", 300); ("たまねぎ", 200); ("にんじん", 150); ("ほうれん草", 200);]

(*目的：itemの値段を調べる *)
let rec price item yaoya_list = match yaoya_list with
  [] -> None
  | (yasai, nedan) :: rest ->
    if item = yasai then Some(nedan)
    else price item rest


(* 目的: yasai_listを買ったときの値段の合計を調べる *)
let rec total_price yasai_list yaoya_list = match yasai_list with
    [] -> 0
    | first :: rest ->
      match price first yaoya_list with
      None -> total_price rest yaoya_list
      | Some (p) -> p + total_price rest yaoya_list

(*例外処理を使ったitemの値段を調べる*)

(*売り切れを示す例外 *)

exception Urikire

let rec price item yaoya_list = match yaoya_list with
      [] -> raise Urikire
      | (yasai, nedan) :: rest ->
        if item = yasai then nedan
        else price item rest