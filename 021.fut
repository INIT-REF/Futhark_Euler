def divsum(n: i32) = if n == 1 then 1 else
    reduce (+) 0 (map(\x -> if n % x == 0 then x else 0) (1...(n / 2)))

def amicable(n: i32) = if divsum(n) != n && divsum(divsum(n)) == n then n else 0

def main = reduce (+) 0 (map(\x -> amicable(x)) (1...10000))
