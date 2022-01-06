(*目的 *)
let team_string team = match team with
  Red -> "赤組"
  | White -> "白組"

type nengou_t =
  Meiji of int
  | Taisho of int
  | Showa of int
  | Heisei of int
  | Reiwa of int

(*目的: 年号を受け取ったら対応する西暦を返す *)

let to_seireki : nengou = match nengou with
  Meiji (n) -> n + 1867
  | Taisho (n) -> n + 1911
  | Showa (n) -> n + 1925
  | Heisei (n) -> n + 1988


type tree_t = Empty | Leaf of int | Node of tree_t * int * tree_t

let tree1 = Empty
let tree2 = Leaf(3)
let tree3 = Node(tree1, 4, tree2)
let tree4 = Node(tree2, 5, tree3)

(*目的：treeに含まれる整数をすべて加える *)
let rec sum_tree tree = match tree with
  Empty -> 0
  | Leaf (n) -> n
  | Node (t1, n, t2) -> sum_tree t1 + n + sum_tree t2

(* テスト *)
let test1 = sum_tree tree1 = 0
let test2 = sum_tree tree2 = 3
let test3 = sum_tree tree3 = 7
let test4 = sum_tree tree4 = 15

