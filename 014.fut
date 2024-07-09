def collatz(n: i32) = 
    let (_, l) = loop (n, l) = (i64.i32(n), 1i32) while n > 1 do
        if n & 1 == 0 then (n / 2, l + 1) else (3 * n + 1, l + 1)
    in (n, l)

def max(n1: i32, l1: i32)(n2: i32, l2: i32) = if l1 > l2 then (n1, l1) else (n2, l2)

def euler014(limit: i32) =
    let (res, _) =  
        (1..<limit)
            |> map collatz
            |> reduce max (0, 0)
    in res

def main = euler014(1000000)
