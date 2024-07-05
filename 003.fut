-- Solution simplified to account for the fact that it is an odd number

def lpf(n: i64) =
    let (_, pf) = loop (n, d) = (n, 3) while n > 1 do
        if n % d == 0 then (n / d, d) else (n, d + 2)
    in pf

def main = lpf(600851475143)
