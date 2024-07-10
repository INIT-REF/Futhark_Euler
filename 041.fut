def isprime(n: i32) =
    let (_, _, b) = loop (num, d, b) = (n, 3, true) while b && d * d < n do
        (num, d + 2, n % d != 0)
    in b

def ispd7(n: i32) = 
    let (bits, _) = loop (b, num) = (0, n) while num > 0 do
        (b + (1 << (num % 10 - 1)), num / 10)
    in bits == 127

def euler041(start: i32) =
    loop n = start while !(isprime(n) && ispd7(n)) do
        n - 2

def main = euler041(7654321)
