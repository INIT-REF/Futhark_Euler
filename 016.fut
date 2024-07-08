def bigint(n: i64) = let big = replicate n 0u64 in let big[n - 1] = 1 in big

def pow2(p: i32) =
    loop res = bigint(17) for i in (1...p) do
        let (res, _) = loop (res, carry) = (res, 0u64) 
           for j in (16..15...0) do
                let tmp = carry + (2 * res[j])
                let carry = tmp / u64.f64(1e18) in
                let res[j] = tmp % u64.f64(1e18) in (res, carry)
        in res

def digitsum(n: u64) =
    let (_, sum) = loop (n, sum) = (n, 0) while n > 0 do
        (n / 10, sum + n % 10)
    in sum
                
def main = reduce (+) 0 (map(\x -> digitsum(x)) (pow2(1000)))
