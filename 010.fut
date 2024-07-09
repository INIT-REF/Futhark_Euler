def SoE(limit: i64) =
    let (res, _) = loop (sieve, d: i64) = (replicate limit true, 2) while d * d <= limit do
        if sieve[d] then 
            let s = loop sieve for m in ((d * d)..(d + d * d)..<limit) do
                let sieve[m] = false in sieve
            in (s, d + 1)
        else (sieve, d + 1)
    in (zip (indices res) res)[2:]

def euler010(limit: i64) = 
    SoE(limit) 
        |> map(\(x, y) -> if y then x else 0) 
        |> i64.sum

def main = euler010(2000000)
