def SoE(limit: i64) =
    let (res, _) = loop (sieve, d: i64) = (replicate limit true, 2) while d * d <= limit do
        if sieve[d] then 
            let s = loop sieve for m in ((d * d)..(d + d * d)..<limit) do
                let sieve[m] = false in sieve
            in (s, d + 1)
        else (sieve, d + 1)
    in res

def get10001st(s: []bool) =
    let (_, p, _) = loop (sieve, i: i32, c: i32) = (s, 3, 2) while c <= 10001 do
        if sieve[i] then (sieve, i + 2, c + 1) else (sieve, i + 2, c)
    in p - 2

def main = get10001st(SoE(114500))
