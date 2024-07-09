def divsum(n: i32) = if n == 1 then 1 
    else (1...(n / 2)) |> map (\x -> if n % x == 0 then x else 0) |> i32.sum

def amicable(n: i32) = if divsum(n) != n && divsum(divsum(n)) == n then n else 0

def euler021(limit: i32) = (1...limit) |> map amicable |> i32.sum

def main = euler021 10000
