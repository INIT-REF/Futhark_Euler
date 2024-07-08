def bigint(n: i64) = let big = replicate n 0u64 in let big[n - 1] = 1 in big

def fact(n: u64) =
    let (res, _) = loop (res, n) = (bigint(10), n) while n > 1 do
        let (res, _, _) = loop (res, carry, n) = (res, 0u64, n) 
           for j in (9..8...0) do
                let tmp = carry + (n * res[j])
                let carry = tmp / u64.f64(1e17) in
                let res[j] = tmp % u64.f64(1e17) in (res, carry, n)
        in (res, n - 1)
    in res

def digitsum(n: u64) =
    let (_, sum) = loop (n, sum) = (n, 0) while n > 0 do
        (n / 10, sum + n % 10)
    in sum
                
def main = reduce (+) 0 (map(\x -> digitsum(x)) (fact(100)))
