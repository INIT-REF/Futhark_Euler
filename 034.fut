-- using 2540160 = 7 * 9! as the upper limit 
-- because 8 * 9! is still a 7-digit number

def facts : []i32 = [1, 1, 2, 6, 24, 120, 720, 5040, 40320, 362880]

def fds(n: i32) =
    let (sum, _) = loop (sum, n) = (0, n) while n > 0 do
        (sum + facts[n % 10], n / 10)
    in if sum == n then n else 0

def euler034(limit: i32) = (3...limit) |> map fds |> i32.sum

def main = euler034(2540160)
