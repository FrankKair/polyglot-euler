open Base
open Stdio

let squared x = x * x

let sum = List.fold ~init:0 ~f:(+)

let sum_of_sqs =
  List.range 1 101
  |> List.map ~f:(squared)
  |> sum

let sq_of_sum =
  List.range 1 101
  |> sum
  |> squared

let solve =
  sq_of_sum - sum_of_sqs

let () =
  printf "%d\n" solve
