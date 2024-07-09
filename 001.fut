def mult3or5(n: i32) = if 0 == n % 3 * n % 5 then n else 0
def euler001(limit: i32) = (0...limit) |> map mult3or5 |> i32.sum

def main = euler001(999)
