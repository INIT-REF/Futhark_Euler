def euler028(size: i32) = 
    let (sum, _) = loop (sum, n) = (1, 1) for i in 4..<(2 * size + 2) do
        let n = n + 2 * (i / 4) in (sum + n, n)
    in sum

def main = euler028(1001)
