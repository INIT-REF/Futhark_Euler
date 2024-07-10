def SoE(limit: i32) =
    let (res, _) = loop (sieve, d) = (replicate (i64.i32(limit)) true, 2)
        while d * d <= limit do
            if sieve[d] then 
                let s = loop sieve for m in ((d * d)..(d + d * d)..<limit) do
                    let sieve[m] = false in sieve
                in (s, d + 1)
            else (sieve, d + 1)
    in [false, false] ++ res[2:]

def primes(limit: i32) = let sieve = SoE(limit) in 
    filter (\x -> sieve[x]) (11..13..<limit)

def rltrncp(n: i32) =
    let (l, _, _) = loop (l, n, e) = ([n], n, 10) while e < n do
        (l ++ [n / e] ++ [n % e], n, e * 10)
    in l 

def euler037(limit: i32) = let sieve = SoE(limit) in
    loop res = 0 for n in primes(limit) do
        if n |> rltrncp |> map(\x -> sieve[x]) |> and then res + n
        else res
                
def main = euler037(1000000)
