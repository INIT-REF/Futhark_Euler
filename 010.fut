def SoE(limit: i64) =
    let (res, _) = loop (sieve, d: i64) = (replicate limit true, 2) while d * d <= limit do
        if sieve[d] then 
            let s = loop sieve for m in ((d * d)..(d + d * d)..<limit) do
                let sieve[m] = false in sieve
            in (s, d + 1)
        else (sieve, d + 1)
    in res

def sum(s: []bool) =
    let (_, s) = loop (sieve, s: i64) = (s, 2) for i in (3..5..<2000000) do
        if sieve[i] then (sieve, s + i) else (sieve, s)
    in s

def main = sum(SoE(2000000))
