open Core_kernel
open Stdio

let load_names = 
  let replace ~pattern ~with_str =
    Str.global_replace (Str.regexp_string pattern) with_str in

  In_channel.read_all "p022_names.txt"
  |> replace ~pattern:"\"" ~with_str:""
  |> String.split ~on:',' 
  |> List.sort ~compare:(Stdlib.compare)

let name_score index name = 
  let char_val c = Char.to_int c - 64 in
  name
  |> Bytes.of_string
  |> Bytes.to_list
  |> List.map ~f:(fun c -> (index + 1) * char_val c)
  |> List.fold ~f:(+) ~init:(0)

let solve = 
  load_names
  |> List.mapi ~f:(fun i s -> name_score i s)
  |> List.fold ~f:(+) ~init:(0)

let () =
  printf "%i\n" solve;;
