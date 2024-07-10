def ispal(n: i32, b: i32) =
    let (rev, _) = loop (rev, n) = (0, n) while n > 0 do
        (rev * b + n % b, n / b)
    in rev == n

def dbp(n: i32) = if (ispal(n, 10)) && (ispal(n, 2)) then n else 0

def euler036(limit: i32) = (1..3..<limit) |> map dbp |> i32.sum

def main = euler036(1000000)
