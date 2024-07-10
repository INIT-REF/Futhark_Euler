-- using 2540160 = 7 * 9! as the upper limit 
-- because 8 * 9! is still a 7-digit number

def facts : []i32 = [1, 1, 2, 6, 24, 120, 720, 5040, 40320, 362880]

def fds(n: i32) =
    let (sum, _) = loop (sum, n) = (0, n) while n > 0 do
        (sum + facts[n % 10], n / 10)
    in sum

def euler034(limit: i32) =
    loop sum = 0 for n in 3...limit do
        if fds(n) == n then sum + n else sum

def main = euler034(2540160)
