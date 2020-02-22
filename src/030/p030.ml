open Base
open Stdio

let digits n =
  let rec loop n acc =
    if n = 0 then acc
    else loop (n / 10) (n % 10::acc) in
  match n with
  | 0 -> [0]
  | _ -> loop n []

let sum = List.fold ~init:(0) ~f:(+)

let digits_fifth_power n =
  digits n
  |> List.map ~f:(fun x -> Int.pow x 5)
  |> sum

let solve =
  List.range 2 200000
  |> List.filter ~f:(fun x -> digits_fifth_power x = x)
  |> sum

let () =
  printf "%d\n" solve;;
