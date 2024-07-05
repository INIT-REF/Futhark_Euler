def gcd(a: i32, b: i32) =
    let (_, res) = loop (a, b) while a > 0 do
        (b % a, a)
    in res

def lcm(a: i32)(b: i32) = b * (a / gcd(a, b))

def main = reduce (lcm) 1 (2...20)
