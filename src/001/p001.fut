let divisible (n: i32): bool = ((n %% 3i32) == 0i32) || ((n %% 5i32) == 0i32)
 
let solve(): i32 = reduce (+) 0i32 (filter divisible (3i32...999i32)) 

let main (): i32 = solve()
