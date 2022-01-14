(*目的　ふたつの自然数,m, nの最大公約数を求める *)
let rec gcd m n =
  (print_string "m = ";
  print_int m;
  print_string "n = ";
  print_int n;
  print_newline();
  if n = 0 then m
  else gcd n (m mod n)
  )



