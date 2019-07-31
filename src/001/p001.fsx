let DivBy3or5 n = 
  n % 3 = 0 || n % 5 = 0

let solve =
  seq {1..1000-1}
  |> Seq.filter DivBy3or5
  |> Seq.reduce (+)

printfn "%i" solve
