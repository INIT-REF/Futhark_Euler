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
    filter (\x -> sieve[x]) ([2] ++ (3..5..<limit))

def rot(n: i32) = if n < 10 then [n] else
    let t = loop t = 10 while t < n / 10 do t * 10 in
    loop rot = [n] for _ in 1...t32(f32.log10(r32 n)) do
        [t * ((head rot) % 10) + (head rot) / 10] ++ rot

def euler035(limit: i32) = let sieve = SoE(limit) in
    loop res = 0i32 for n in primes(limit) do
        if n |> rot |> map(\x -> sieve[x]) |> and then res + 1
        else res
                
def main = euler035(1000000)
