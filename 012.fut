def ndivs(n: i32) = 
    let (_, d, c) = loop (n, d: i32, c: i32) = (n, 2, 2) while d * d < n do
        if n % d == 0 then (n, d + 1, c + 2) else (n, d + 1, c)
    in if d * d == n then c + 1 else c

def trinum(limit: i32) =
    let (tri, _) = loop (tri, n) = (1, 2) while ndivs(tri) <= limit do
        (tri + n, n + 1)
    in tri

def main = trinum(500)
