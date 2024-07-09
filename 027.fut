def SoE(limit: i64) =
    let (res, _) = loop (sieve, d: i64) = (replicate limit true, 2) while d * d <= limit do
        if sieve[d] then 
            let s = loop sieve for m in ((d * d)..(d + d * d)..<limit) do
                let sieve[m] = false in sieve
            in (s, d + 1)
        else (sieve, d + 1)
    in res

def primes(limit: i32) = 
    let (p,_) = loop (p, s) = ([], SoE(i64.i32(limit))) for i in (2..<limit) do
        if s[i] then (p ++ [i], s) else (p, s)
    in p

def sieve2000 = SoE(2000)

def euler027 = 
    let (maxprod, _) = loop (maxprod, max) = (0, 0) for a in (-999...999) do
        loop (maxprod, max) for b in primes(1000) do
            let n = loop n = 0 while n * n + a * n + b > 2 && 
                n * n + a * n + b < 2000 && sieve2000[n * n + a * n + b] do
                    n + 1
            in if n > max then (a * b, n) else (maxprod, max)
    in maxprod

def main = euler027
