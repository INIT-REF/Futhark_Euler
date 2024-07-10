def rev(n: i32) =
    let (r, _) = loop (r, num) = (0, n) while num > 0 do
        (r * 10 + num % 10, num / 10)
    in r

def zeros(n: i32) =
    let (z, _) = loop (z: i32, num) = (0, n) while num % 10 == 0 do
        (z + 1, num / 10)
    in z

def euler040 = let cc = replicate 1000010 0u8 in 
    let (l, _, _) = loop (cc, n, i) = (cc, 1, 1) while i <= 1000000 do
       let (cc, n, _, i) = loop (l, n, r, i) = (cc, n, rev(n), i) while r > 0 do
            let l[i] = u8.i32(r % 10) in (l, n, r / 10, i + 1)
        in (cc, n + 1, i + zeros(n))
    in l[1] * l[10] * l[100] * l[1000] * l[10000] * l[100000] * l[1000000] 

def main = euler040
