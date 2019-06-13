let fibstep (a, b) = 
    Some(a + b, (b, a + b))

let solve =
  (0, 1)
  |> Seq.unfold fibstep
  |> Seq.takeWhile ((>) 4000000)
  |> Seq.filter (fun n -> n % 2 = 0)
  |> Seq.sum

printfn "%i" solve
