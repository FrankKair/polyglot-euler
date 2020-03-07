open Core_kernel
open Stdio

let replace ~pattern ~with_str =
  Str.global_replace (Str.regexp_string pattern) with_str

let load_names = 
  In_channel.read_all "p022_names.txt"
  |> replace ~pattern:"\"" ~with_str:""
  |> String.split ~on:',' 
  |> List.sort ~compare:(Stdlib.compare)

let sum = List.fold ~f:(+) ~init:(0)

let name_score index name = 
  let char_val c = Char.to_int c - 64 in
  name
  |> Bytes.of_string
  |> Bytes.to_list
  |> List.map ~f:(fun c -> (index + 1) * char_val c)
  |> sum

let solve = 
  load_names
  |> List.mapi ~f:(name_score)
  |> sum

let () =
  printf "%i\n" solve;;
