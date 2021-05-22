(* 学生一人分のデータ（名前、点数、成績）を表す型 *)

type gakusei = {
  name: string;
  score: int;
  rank: string
}

(* 目的：学生のデータ gakuseiを受け取り成績のついたデータを返す*)
let hyouka gakusei = match gakusei with
  {name = n; score = s; rank = r} ->
    if s >= 80 then {name = n; score = s; rank = "A"} 
    else if s >= 70 then {name = n; score = s; rank = "B"} 
    else if s >= 60 then {name = n; score = s; rank = "C"}
    else {name = n; score = s; rank = "D"} 

(* テスト *)
let test1 = hyouka  {name = "asai"; score = 90; rank = ""} = {name = "asai"; score = 90; rank = "A"}
let test2 = hyouka  {name = "asai"; score = 80; rank = ""} = {name = "asai"; score = 80; rank = "A"}
let test3 = hyouka  {name = "asai"; score = 75; rank = ""} = {name = "asai"; score = 75; rank = "B"}
let test4 = hyouka  {name = "asai"; score = 70; rank = ""} = {name = "asai"; score = 70; rank = "B"}
let test5 = hyouka  {name = "asai"; score = 65; rank = ""} = {name = "asai"; score = 65; rank = "C"}
let test6 = hyouka  {name = "asai"; score = 60; rank = ""} = {name = "asai"; score = 60; rank = "C"}

