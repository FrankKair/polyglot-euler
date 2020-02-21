open Base
open Stdio

let solve =
  let rec fib a b acc =
    let next = a + b in
    if next > 4000000 then acc
    else if (next % 2) = 0 then fib b next (acc + next)
    else fib b next acc
  in
    fib 1 1 0

let () =
  printf "%d\n" solve;;
