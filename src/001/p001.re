let rec sum = (list) =>
  switch list {
  | [] => 0
  | [item, ...rest] => item + sum(rest)
  };

let sumMultiplesOfThreeAndFive = (start: int, _end: int) =>
  Array.make(_end - start, false)
  |> Array.to_list
  |> List.mapi((index, _) => index)
  |> List.filter((number) => number mod 3 === 0 || number mod 5 === 0)
  |> sum;

let sum1000 = sumMultiplesOfThreeAndFive(0, 1000);
Js.log(sum1000);