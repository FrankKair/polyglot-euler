open Base
open Stdio

let solve =
  List.range 1 1000
  |> List.filter ~f:(fun x -> x % 3 = 0 || x % 5 = 0)
  |> List.reduce ~f:(+)

let () =
  printf "%d\n" solve;;
